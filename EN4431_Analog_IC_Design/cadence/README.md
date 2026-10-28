# Cadence Virtuoso library — `PLL_421E`

SKY130 (1.8 V) Virtuoso library containing every PLL block and its testbench.
Open it by adding `DEFINE PLL_421E <repo>/EN4431_Analog_IC_Design/cadence/PLL_421E` to `cds.lib`.

| Cell | Views | Description | Assignment |
|---|---|---|---|
| `inverter` | schematic, symbol | Delay-stage inverter (LVT devices, parameterised W/L) | A1 |
| `VCRO` | schematic, symbol | Initial 5-stage current-starved ring VCO | A1 |
| `inv_sim` | schematic | Testbench for `VCRO` (transient, V<sub>ctrl</sub> sweep, PSS/PNoise) | A1 |
| `Linear_VCRO` | schematic | Final VCO with resistor-linearised bias (2 kΩ degeneration) + output buffer, 50 fF load | A1 |
| `PFD` | schematic, symbol | Tri-state phase-frequency detector (2 × DFF + reset NAND) | A2 |
| `PFD_tb` | schematic | PFD testbench | A2 |
| `CHARGE_PUMP` | schematic, symbol | 100 µA charge pump | A2 |
| `CHARGE_PUMP_DC_TB`, `CHARGE_PUMP_TR_TB` | schematic | Charge-pump DC and transient testbenches | A2 |
| `PFD_CP_TB`, `PFD_CP_LP_TB` | schematic | Cascaded PFD + CP (+ loop filter) with slightly different input frequencies | A2 |
| `DIV_BY_2`, `2_DIV` | schematic (symbol) | Divide-by-2 flip-flop stages | A2 |
| `DIV_BY_48` | schematic, symbol | Fixed feedback divider built from `DIV_BY_2` / `2_DIV` flip-flop stages | A2 |
| `PLL_TB` | schematic | Complete closed-loop PLL testbench (PFD, CP, loop filter, VCO, divider) | A2 |
| `inv` | schematic, symbol, **layout** | Layout warm-up cell, DRC clean | A3 |

The integrated layouts (`PLL`, `PFD`, `Charge_Pump`, `Current_trarved_ring_VCO`, `freq_div`) were built
in the shared team library; their exported **GDS** and extracted netlists are in
[`../physical_verification/`](../physical_verification/):

| Path | Content |
|---|---|
| `drc/<cell>.gds`, `drc/<cell>.sum` | Stream-out used for DRC and the PVS DRC summary |
| `lvs/<cell>.gds`, `lvs/<cell>.cdl` | Layout stream-out and schematic CDL netlist |
| `lvs/<cell>.spi`, `lvs/<cell>.net` | Extracted layout netlist |
| `lvs/PLL.rep`, `lvs/PLL.rep.cls`, `lvs/PLL.sum` | Top-level LVS / ERC reports |

`../netlists/VCRO_initial_design.scs` is the Spectre netlist of the initial VCO testbench (`inv_sim`).
