# Cadence Genus(TM) Synthesis Solution, Version 18.10-p003_1, built Jun  7 2018 23:53:27

# Date: Tue Dec 02 00:37:56 2025
# Host: aed (x86_64 w/Linux 3.10.0-1160.108.1.el7.x86_64) (4cores*8cpus*1physical cpu*Intel(R) Core(TM) i7-4770 CPU @ 3.40GHz 8192KB)
# OS:   CentOS Linux release 7.9.2009 (Core)

source ../scripts/setup.tcl
read_hdl [glob ../input/rtl/*.v]
elaborateuart_top
elaborate uart_top
uniquify uart_top
source ../input/constraints.tcl
set_db dft_scan_style muxed_scan
set_db dft_prefix dft_
define_shift_enable -name SE -active high -create_port SE
check_dft_rule
set_db syn_generic_effort medium
syn_generic
set_db syn_map_effort medium
syn_map
write_hdl > ../output/uart_top_1.v
report_area > ../report/after_scan_synthesis/area.log
report_timing -nworst 10 >
../report/after_scan_synthesis/timing.log
report_timing -nworst 10 >../report/after_scan_synthesis/timing.log
report_port * > ../report/after_scan_synthesis/ports.log
report_power > ../report/after_scan_synthesis/power.log
define_scan_chain -name top_chain_a -sdi scan_in_a -sdoscan_out_a -non_shared_output -create_ports -domain clk_a
define_scan_chain -name top_chain_a -sdi scan_in_a -sdo scan_out_a -non_shared_output -create_ports -domain clk_a
define_scan_chain -name top_chain_b -sdi scan_in_b -sdo scan_out_b -non_shared_output -create_ports -domain clk_b
connect_scan_chains -preview -auto_create_chains
connect_scan_chains -auto_create_chains
syn_opt -incr
check_dft_rules
report_scan_setup > ../report/scan_setup.log
report_scan_chains > ../report/scan_chains.log
write_hdl > ../output/uart_top_2.v
write_sdc > ../output/uart_top_2.sdc
write_scandef > ../output/uart_top_2_scanDEF.scandef
report_area > ../report/ after_scan_connect/area.log
report_area > ../report/ after_scan_connect/area.log
report_area > ../report/ after_scan_connect/area.log
report_area  ../report/ after_scan_connect/area.log
report_area > ../report/ after_scan_connect/area.log
report_area -summary > ../report/ after_scan_connect/area.log
report_area > ../report/after_scan_connect/area.log
report_timing -nworst 10 > ../report/after_scan_connect/timing.log
report_port * > ../report/ after_scan_connect/ports.log
report_port * > ../report/ after_scan_connect/ports.log
report_port* > ../report/ after_scan_connect/ports.log
report_port * > ../report/after_scan_connect/port.log
report_power > ../report/after_scan_connect/power.log
write_dft_atpg -library../input/libs/gsclib045/timing/slow_vdd1v0_basicCells.lib
write_dft_atpg -library ../input/libs/gsclib045/timing/slow_vdd1v0_basicCells.lib
gui_show
