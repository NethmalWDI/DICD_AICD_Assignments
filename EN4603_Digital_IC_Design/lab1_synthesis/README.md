# Lab 1 — RTL Synthesis (Cadence Genus)

**Handout:** [`../docs/lab_sheets/EN4603-Lab1.pdf`](../docs/lab_sheets/EN4603-Lab1.pdf)

Synthesis of a reference design made of **two RS-232 UART transceivers** (A and B) connected
back-to-back, each in its own asynchronous clock domain (`clk_a`, `clk_b`) with its own reset.

## Design (`input/rtl/`)

| File | Role |
|---|---|
| `uart_top.v` | Top level — instantiates transceivers A and B (`TX_WORD_LENGTH`, `RX_WORD_LENGTH` parameters) |
| `uart_transceiver.v` | One transceiver: TX path + RX path + sampling tick |
| `tx_wrapper.v`, `tx_fsm.v`, `tx_buffer.v` | Transmitter: parallel write interface, framing FSM, buffer |
| `rx_wrapper.v`, `rx_fsm.v`, `rx_buffer.v` | Receiver: oversampling FSM, parity/stop-bit checks, buffer |
| `sampling_tick_generator.v` | Baud-rate tick generator |

## Flow

`set_db` libraries → `read_hdl` → `elaborate uart_top` → `check_design` → `uniquify` →
`source constraints.tcl` → `synthesize -to_mapped -effort m` → write netlist/SDC → reports.
Full command history: [`work/genus.cmd`](work/genus.cmd).

## Exercise changes (in `input/constraints.tcl`)

* Word length increased to **32 bits** for TX and RX (`TX_WORD_LENGTH = RX_WORD_LENGTH = 32`).
* Both clocks at **50 MHz** (`-period 20`), **40 % duty cycle**.
* `clk_b` shifted by **180°** (`-waveform {10 18}`).
* Output load increased by **5 pF** (`set_load 5.2`).
* Paths between `clk_a` and `clk_b` declared false (asynchronous domains).

## Outputs & results

| File | Content |
|---|---|
| `output/uart_top.v` / `.sdc` | Baseline run — 8-bit words, 100 MHz clocks |
| `output/uart_top_17.v` / `.sdc` | Exercise run — 32-bit words, 50 MHz / 40 % duty, `clk_b` +180° |
| `output/uart_top_1.*`, `output/uart_top_new.*` | Intermediate runs |
| `report/area.log` | 1130 cells, 4 016 µm² cell + 1 403 µm² net = **5 419 µm²** (32-bit configuration) |
| `report/timing.log` | 10 worst paths — all positive slack (≈ +9.1 ns) |
| `report/power.log` | ≈ 172.6 µW total (leakage 61 nW) |
| `report/ports_final.log`, `log/check_design.log` | Port list and design-check results |
