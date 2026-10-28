# IC Design Coursework — Digital (EN4603) & Analog (EN4431)

Coursework repository for two integrated-circuit design modules at the
**Department of Electronic & Telecommunication Engineering, University of Moratuwa**.

| | |
|---|---|
| **Author** | W. D. I. Nethmal — 210421E |
| **Modules** | EN4603 Digital IC Design · EN4431 Analog IC Design |
| **Digital toolchain** | Cadence Genus 18.1 (synthesis, DFT) · Cadence Innovus 18.1 (place & route) · Cadence 45 nm GPDK (`gsclib045` / `giolib045`) |
| **Analog toolchain** | Cadence Virtuoso + Spectre (schematic, ADE) · Pegasus/PVS (DRC/LVS) · SkyWater **SKY130** PDK |

---

## What's inside

### EN4603 — Digital IC Design &nbsp;→ [`EN4603_Digital_IC_Design/`](EN4603_Digital_IC_Design/)

A complete RTL-to-GDSII ASIC flow, first on a reference design in three labs and then on an
8-bit ALU of my own.

| Work | Design | Flow step(s) | Key result |
|---|---|---|---|
| [Lab 1](EN4603_Digital_IC_Design/lab1_synthesis/) | Dual UART transceiver | RTL synthesis (Genus) | Mapped netlist + SDC; area/timing/power reports |
| [Lab 2](EN4603_Digital_IC_Design/lab2_dft_insertion/) | Dual UART transceiver | DFT — muxed-scan insertion | 2 scan chains × 82 flops (one per clock domain) |
| [Lab 3](EN4603_Digital_IC_Design/lab3_place_and_route/) | Dual UART transceiver | Floorplan → place → CTS → route (Innovus) | GDSII; 0 geometry/connectivity violations; setup & hold met |
| [ALU project](EN4603_Digital_IC_Design/alu_asic_project/) | 8-bit, 8-op ALU | Synthesis → scan DFT → P&R with I/O pad ring | 197 cells / 684 µm² core; 10-flop scan chain; padded chip layout |

### EN4431 — Analog IC Design &nbsp;→ [`EN4431_Analog_IC_Design/`](EN4431_Analog_IC_Design/)

A **second-order Type-II integer-N charge-pump PLL** in SKY130, built up over four assignments
towards a Tiny Tapeout (TTSKY26c) submission.

| Assignment | Topic | Key result |
|---|---|---|
| A1 | Current-starved ring VCO (theory + design) | 5-stage linearised VCO, f<sub>c</sub> = 101.4 MHz, 36.9–168.9 MHz tuning, K<sub>VCO</sub> ≈ 218 MHz/V, 360 µW |
| A2 | Integer-N PLL analysis & schematic design | Loop filter for f<sub>c</sub> = 180 kHz, PM = 65°; PLL locks at 127.999 MHz (÷64, 2 MHz ref) |
| A3 | Block-wise layout (group work) | Charge pump & VCO layouts, DRC clean |
| A4 | Integrated PLL layout | Top-level PLL layout (PFD + CP + LF + VCO + divider) within the 160 × 225 µm Tiny Tapeout budget |

---

## Repository layout

```
.
├── EN4603_Digital_IC_Design/
│   ├── docs/lab_sheets/            # Official lab handouts (PDF)
│   ├── lab1_synthesis/             # Genus synthesis of the UART reference design
│   ├── lab2_dft_insertion/         # Scan-chain (DFT) insertion
│   ├── lab3_place_and_route/       # Innovus place & route → GDSII
│   └── alu_asic_project/           # Individual assignment: 8-bit ALU, RTL → padded layout
│       ├── 1_synthesis_dft/
│       ├── 2_place_and_route/
│       └── archive/                # Earlier working iterations (kept for reference)
│
├── EN4431_Analog_IC_Design/
│   ├── docs/task_sheets/           # A1–A4 assignment briefs (PDF)
│   ├── reports/                    # My submitted reports A1–A4 (PDF)
│   ├── cadence/PLL_421E/           # Virtuoso library (schematics, symbols, testbenches)
│   ├── physical_verification/      # PVS DRC & LVS runs, exported GDS, CDL/SPICE netlists
│   └── netlists/                   # Stand-alone Spectre netlists
│
└── docs/REPO_REORGANISATION.md     # Map of old → new paths
```

Every project folder has its own `README.md` with the design description, how to re-run it, and results.

## Getting started

```bash
git clone <this-repo-url>
cd DICD_AICD_Assignments
```

* **Digital labs / ALU** – need a Cadence Genus/Innovus 18.x install and the Cadence 45 nm GPDK
  standard-cell libraries copied into each project's `input/libs/gsclib045/` (see
  [`EN4603_Digital_IC_Design/README.md`](EN4603_Digital_IC_Design/README.md#technology-libraries)).
* **Analog PLL** – need Cadence Virtuoso with the SKY130 Cadence PDK; add the library to your
  `cds.lib` (see [`EN4431_Analog_IC_Design/README.md`](EN4431_Analog_IC_Design/README.md#opening-the-virtuoso-library)).

## What is *not* in the repository

To keep the repo small and licence-compliant, `.gitignore` excludes:

* **Foundry / vendor libraries** (`input/libs/gsclib045`) — Cadence educational GPDK, not redistributable.
* **Innovus design databases** (`*.dat/`) and the `Assignment_new.zip` backup.
* Tool scratch: Virtuoso lock files (`*.cdslck`), PVS result databases (`*.pvstdb/`, `.ecdb`),
  verbose `*.logv` logs, Genus formal-verification dirs.

These files remain on the original machine; only design sources, scripts, netlists, reports and documents are versioned.

## Academic integrity

This repository is published as a record of my own coursework and as a portfolio reference.
If you are taking these modules, use it to understand the flow — do not copy it into your own submissions.
Assignment briefs and lab sheets are © Department of Electronic & Telecommunication Engineering, University of Moratuwa.
