# Lab 2 — DFT: Scan-Chain Insertion (Cadence Genus)

**Handout:** [`../docs/lab_sheets/EN4603-Lab2.pdf`](../docs/lab_sheets/EN4603-Lab2.pdf)

Inserts **muxed-scan** test logic into the dual-UART design from Lab 1, producing a
scan-stitched netlist, SDC, a scanDEF for scan reordering in P&R, and Modus ATPG scripts.

## Flow (`work/genus.cmd`)

1. `source ../scripts/setup.tcl` (library setup), read RTL, elaborate, constraints
2. `set_db dft_scan_style muxed_scan`, `dft_prefix dft_`
3. `define_shift_enable -name SE -active high -create_port SE`
4. `check_dft_rules` → `syn_generic` → `syn_map` (flops replaced by scan flops) → `output/uart_top_1.v`
5. `define_scan_chain` ×2 — one chain per clock domain (`clk_a`, `clk_b`)
6. `connect_scan_chains -auto_create_chains` → `syn_opt -incr` → `check_dft_rules`
7. Write `output/uart_top_2.v`, `uart_top_2.sdc`, `uart_top_2_scanDEF.scandef`
8. `write_dft_atpg` → `work/test_scripts/` (Modus ATPG + full-scan simulation scripts)

`initialize.sh` cleans the output/report/work directories before a fresh run.

## Results

| Stage | Cells | Cell area (µm²) | Net area (µm²) | Total (µm²) |
|---|---:|---:|---:|---:|
| After scan synthesis (`uart_top_1.v`) | 764 | 2 570.5 | 987.7 | 3 558.1 |
| After scan connect (`uart_top_2.v`) | 764 | 2 562.9 | 1 048.7 | 3 611.7 |

| Chain | Scan in | Scan out | Clock domain | Length |
|---|---|---|---|---:|
| `top_chain_a` | `scan_in_a` | `scan_out_a` | `clk_a` | 82 |
| `top_chain_b` | `scan_in_b` | `scan_out_b` | `clk_b` | 82 |

Stitching adds the SI connections and the scan ports (`SE`, `scan_in_*`, `scan_out_*`); the extra
routing shows up mainly as net area. Detailed reports: `report/after_scan_synthesis/`,
`report/after_scan_connect/`, `report/scan_setup.log`, `report/scan_chains.log`.
