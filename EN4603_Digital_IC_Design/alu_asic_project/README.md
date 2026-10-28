# 8-bit ALU — RTL to Padded Layout (EN4603 Individual Assignment)

An 8-bit registered ALU taken through the full Cadence digital flow on the 45 nm GPDK:
**Genus synthesis → muxed-scan DFT → Innovus place & route inside an I/O pad ring.**

## The design

RTL: [`1_synthesis_dft/input/rtl/alu.v`](1_synthesis_dft/input/rtl/alu.v) — parameterised width `N = 8`,
registered on the rising edge of `clk` when `en = 1`.

| `op_code` | Mnemonic | Operation | Carry flag |
|:---:|---|---|:---:|
| `000` | ADD | `A + B` | ✓ |
| `001` | ADC | `A + B + carry` | ✓ |
| `010` | SUB | `A − B` | ✓ (borrow) |
| `011` | INC | `A + 1` | ✓ |
| `100` | DEC | `A − 1` | ✓ |
| `101` | CMP | `1` if A < B, `2` if A = B, `4` if A > B | – |
| `110` | SHL | `A << 1` | – |
| `111` | SHR | `A >> 1` | – |

`flag_zero` is set when the result is zero. Ports: `A[7:0]`, `B[7:0]`, `op_code[2:0]`, `clk`, `en`
→ `result_out[7:0]`, `flag_carry`, `flag_zero` (+ `SE`, `scan_in`, `scan_out` after DFT).

Constraints ([`constraints.tcl`](1_synthesis_dft/input/constraints.tcl)): 100 MHz clock (10 ns, 50 % duty),
0.1 ns clock transition, 10 ps uncertainty, 1 ns input/output delays.

## Folder structure

```
alu_asic_project/
├── 1_synthesis_dft/          # Part 1 — Genus
│   ├── input/                # rtl/alu.v, constraints.tcl, setup.tcl, streamOut.map
│   ├── output/               # alu_syn.v/.sdc, alu_scan_syn.v, alu_scan_con.v/.sdc, alu_scandDEF.scandef
│   ├── report/               # synthesized/, after_scan_synthesis/, after_scan_connect/, scan_*.log
│   └── work/                 # genus.cmd, genus.log, test_scripts/ (Modus ATPG)
├── 2_place_and_route/        # Part 2 — Innovus with I/O pads
│   ├── input/                # alu_syn.v (scan netlist), alu_top_module.v (pad wrapper), pad.io, alu_2.view, SDCs
│   ├── innovus_out/          # run dir: innovus.cmd/.log, pre-CTS reports, geometry report, saved-design stubs
│   └── report/post_CTS/      # post-CTS timing / DRV reports
└── archive/                  # earlier iterations (see archive/README.md)
```

## Part 1 — Synthesis & DFT (`1_synthesis_dft/`)

Flow ([`work/genus.cmd`](1_synthesis_dft/work/genus.cmd)): read/elaborate `alu` → `synthesize -to_mapped -effort m` →
`dft_scan_style muxed_scan` → `define_shift_enable SE` → `syn_generic`/`syn_map` → `define_scan_chain chain`
(`scan_in` → `scan_out`, domain `clk`) → `connect_scan_chains` → `syn_opt -incr` → write netlist, SDC, scanDEF, ATPG scripts.

| Stage | Cells | Cell area (µm²) | Net area (µm²) | Total (µm²) | Worst slack |
|---|---:|---:|---:|---:|---:|
| Synthesised (no DFT) | 184 | 380.3 | 252.6 | **632.9** | +5.37 ns |
| After scan synthesis | 198 | 398.8 | 272.3 | **671.1** | – |
| After scan connect | 197 | 407.3 | 276.3 | **683.6** | +5.53 ns |

* Power (synthesised, slow corner 0.9 V / 125 °C): **26.0 µW** (8.9 nW leakage)
* Scan chain: **1 chain, 10 flops** — `flag_carry → flag_zero → result[0] … result[7]`
* DFT overhead: ≈ +8 % area for full scan

## Part 2 — Place & route with I/O pad ring (`2_place_and_route/`)

* **Pad wrapper** [`alu_top_module.v`](2_place_and_route/input/alu_top_module.v): the scan-inserted core `alu`
  surrounded by `giolib045` pads — 23 × `PADDI` inputs, 11 × `PADDO` outputs, core and I/O supply pads
  (`VDD`, `GND`, `VDDIOR`, `VSSIOR`) and 4 × `padIORINGCORNER`.
* **Pad placement** [`pad.io`](2_place_and_route/input/pad.io): `op_code`, `clk`, `en`, supplies on the left;
  `A[7:0]` + `scan_in` on top; `B[7:0]` + `SE` on the bottom; `result[7:0]`, `scan_out`, `flag_zero` on the right.
* **MMMC** [`alu_2.view`](2_place_and_route/input/alu_2.view): slow (125 °C) setup view, fast (−40 °C) hold view.
* Flow ([`innovus_out/innovus.cmd`](2_place_and_route/innovus_out/innovus.cmd)): import with I/O file → floorplan with
  100 µm I/O margins → core rings / stripes (Metal7/8) → `sroute` (pad pins, pad ring, core pins) → placement →
  scan reorder → `ccopt_design` (CTS) → NanoRoute → filler insertion → `verifyGeometry`.

## Results

| Check | Core-only flow ([archive/iteration_1](archive/iteration_1_Assignment/)) | Padded chip (`2_place_and_route`) |
|---|---|---|
| Std cells / area (pre-CTS) | 183 cells, 403.6 µm² | 194 cells, 393.0 µm² (iteration 2 count) |
| Setup (sign-off) | WNS **+6.612 ns**, 0 violations | see known issue 1 |
| Hold (sign-off) | WNS **+0.003 ns**, 0 violations | – |
| DRVs | 0 | 14 max-transition nets (post-CTS) |
| Geometry (`verifyGeometry`) | **0 violations** | 11 shorts |
| Connectivity | no problems | – |
| GDSII | [`archive/iteration_1_Assignment/output/ALU`](archive/iteration_1_Assignment/output/ALU) | – |

## Known issues / next steps

1. **Top-level constraints** — the padded run loads `alu_syn.sdc`, which constrains the *core* port `clk`.
   At the pad-ring top the clock port is `clk_in`, so the timing report shows 0 constrained paths.
   `input/cons.tcl` already contains the top-level SDC (`clk_in`, `A_in`, …); it should be used in `alu_2.view`.
2. **14 max-transition violations** on nets driven through the pads — fix with `optDesign -postCTS -drv`
   or by buffering the pad-to-core nets.
3. **11 shorts** in the final `verifyGeometry` (`innovus_out/alu.geom.rpt`): 6 between the `VSSIOR` pad pin and the
   blockage of `CornerCell1` (Metal4), and 5 where the `clk_in` net is routed over the `clk` pad's blockage (Metal10/11).
   Fix by moving `VSSIOR` away from the corner in `pad.io` and adding a routing blockage / re-routing `clk_in`.
