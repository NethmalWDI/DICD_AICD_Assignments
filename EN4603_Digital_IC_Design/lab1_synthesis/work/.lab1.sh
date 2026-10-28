# 1. Link Technology Library
set_db init_lib_search_path [list ../input/libs/gsclib045/lef ../input/libs/gsclib045/timing ../input/libs/gsclib045/qrc/qx]

set_db library slow_vdd1v0_basicCells.lib
#set_db library fast_vdd1v0_basicCells.lib
set_db lef_library {gsclib045_tech.lef gsclib045_macro.lef gsclib045_multibitsDFF.lef}
set_db qrc_tech_file gpdk045.tch

# 2. Read HDLs
read_hdl [glob ../input/rtl/*.v]

# 3. Elaborate the top module
elaborate uart_top

# 4. Check Design
check_design > ../log/check_design.log

uniquify uart_top

# 5. Set constraints
source ../input/constraints.tcl

# 6. Synthesize 
synthesize -to_mapped -effort m

# 7. Write netlist
write -mapped > ../output/uart_top.v
write_sdc > ../output/uart_top.sdc

# 8. Reports
report_area > ../report/area.log
report_timing  -nworst 10 > ../report/timing.log
report_constraint > ../report/constraint.log
report_port * > ../report/ports_final.log
report_power > ../report/power.log
