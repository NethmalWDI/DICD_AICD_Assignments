# Cadence Genus(TM) Synthesis Solution, Version 18.10-p003_1, built Jun  7 2018 23:53:27

# Date: Sat Oct 18 21:24:52 2025
# Host: aed (x86_64 w/Linux 3.10.0-1160.108.1.el7.x86_64) (4cores*8cpus*1physical cpu*Intel(R) Core(TM) i7-4770 CPU @ 3.40GHz 8192KB)
# OS:   CentOS Linux release 7.9.2009 (Core)

set_db init_lib_search_path [list ../input/libs/gsclib045/lef ../input/libs/gsclib045/timing ../input/libs/gsclib045/qrc/qx]
set_db library {slow_vdd1v0_basicCells.lib fast_vdd1v0_basicCells.lib}
set_db lef_library {gsclib045_tech.lef gsclib045_macro.lef gsclib045_multibitsDFF.lef}
set_db qrc_tech_file gpdk045.tch
read_hdl [glob ../input/rtl/*.v]
elaborate uart_top
check_design > ../log/check_design.log
uniquify uart_top
source ../input/constraints.tcl
synthesize -to_mapped -effort m
write -mapped > ../output/uart_top.v
write_sdc > ../output/uart_top.sdc
report_area > ../report/area.log
report_timing -nworst 10 > ../report/timing.log
report_port * > ../report/ports_final.log
report_power > ../report/power.log
gui_show
gui_start
read_hdl [glob ../input/rtl/*.v]
elaborate uart_top
check_design > ../log/check_design.log
uniquify uart_top
source ../input/constraints.tcl
synthesize -to_mapped -effort m
write -mapped > ../output/uart_top.v
write -mapped > ../output/uart_top.v
write -mapped > ../output/uart_top_new.v
write_sdc > ../output/uart_top_new.sdc
report_area > ../report/area_new.log
report_designs
get_db designs
set_db current _design uart_top
read_hdl [glob ../input/rtl/uart_top.v]
elaborate uart_top
check_design > ../log/check_design.log
uniquify uart_top
uniquify uart_top_1
source ../input/constraints.tcl
remove_design -all
remove_designs -all
write -mapped > ../output/uart_top.v
set_db current _design uart_top_1
get_db designs
set_db current_design uart_top_1
set_top_module uart_top
read_hdl [glob ../input/rtl/*.v]
check_design > ../log/check_design.log
uniquify uart_top
source ../input/constraints.tcl
synthesize -to_mapped -effort m
write -mapped > ../output/uart_top.v
write_sdc > ../output/uart_top.sdc
report_area > ../report/area.log
set_top_module uart_top_1
elaborate uart_top_1
elaborate uart_top
check_design > ../log/check_design.log
uniquify uart_top
source ../input/constraints.tcl
synthesize -to_mapped -effort m
write -mapped > ../output/uart_top_1.v
write_sdc > ../output/uart_top_1.sdc
report_area > ../report/area.log
read_hdl [glob ../input/rtl/*.v]
get_db designs
set_top_module uart_top_16
elaborate uart_top_16
elaborate uart_top
check_design > ../log/check_design.log
uniquify uart_top_17
source ../input/constraints.tcl
synthesize -to_mapped -effort m
write -mapped > ../output/uart_top_17.v
write_sdc > ../output/uart_top_17.sdc
report_area > ../report/area.log
report_timing -nworst 10 > ../report/timing.log
source ../input/constraints.tcl
synthesize -to_mapped -effort m
write -mapped > ../output/uart_top_17.v
write_sdc > ../output/uart_top_17.sdc
report_timing -nworst 10 > ../report/timing.log
