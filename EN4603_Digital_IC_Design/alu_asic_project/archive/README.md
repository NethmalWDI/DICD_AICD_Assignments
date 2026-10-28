# Archive — earlier ALU working iterations

Kept for reference; the clean, final version of the project is in
[`../1_synthesis_dft`](../1_synthesis_dft) and [`../2_place_and_route`](../2_place_and_route).

| Folder | Originally | What it contains |
|---|---|---|
| `iteration_1_Assignment/` | `Assignment/` | First end-to-end run (10 Dec 2025): synthesis + DFT, then **core-only** P&R of `alu` with power rings/stripes, CTS, routing, sign-off timing (setup WNS +6.61 ns, hold +0.003 ns), clean `verifyGeometry` / `verifyConnectivity` and the GDSII `output/ALU`. `new_output/` holds the first pad-ring attempts (`alu_pad`, `alu_pad_grid`). |
| `iteration_2_Assignment_new/` | `Assignment_new/` | Second iteration (11 Dec 2025) focused on adding the I/O pad wrapper (`alu_top_module.v`, `pad.io`) and P&R of the padded design (`innovus_out/`). Superseded by `../2_place_and_route`. |
| `duplicates/pad 1.io` | `Assignment_4/Part_2/input/` | Byte-identical copy of `pad.io`. |
| `Assignment_new.zip` | – | Backup of iteration 2 (**git-ignored**, local only). |

Innovus saved-design databases (`*.dat/`) and the verbose logs are git-ignored; the small
`alu_pad_*` stub files only work together with those databases.
