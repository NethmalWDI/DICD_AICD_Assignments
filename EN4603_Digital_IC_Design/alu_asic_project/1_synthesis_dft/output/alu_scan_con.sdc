# ####################################################################

#  Created by Genus(TM) Synthesis Solution 18.10-p003_1 on Fri Dec 12 08:30:25 +0530 2025

# ####################################################################

set sdc_version 2.0

set_units -capacitance 1000.0fF
set_units -time 1000.0ps

# Set the current design
current_design alu

create_clock -name "clk" -period 10.0 -waveform {0.0 5.0} [get_ports clk]
set_clock_transition 0.1 [get_clocks clk]
set_clock_gating_check -setup 0.0 
set_input_delay -clock [get_clocks clk] -add_delay -max 1.0 [get_ports {A[7]}]
set_input_delay -clock [get_clocks clk] -add_delay -max 1.0 [get_ports {A[6]}]
set_input_delay -clock [get_clocks clk] -add_delay -max 1.0 [get_ports {A[5]}]
set_input_delay -clock [get_clocks clk] -add_delay -max 1.0 [get_ports {A[4]}]
set_input_delay -clock [get_clocks clk] -add_delay -max 1.0 [get_ports {A[3]}]
set_input_delay -clock [get_clocks clk] -add_delay -max 1.0 [get_ports {A[2]}]
set_input_delay -clock [get_clocks clk] -add_delay -max 1.0 [get_ports {A[1]}]
set_input_delay -clock [get_clocks clk] -add_delay -max 1.0 [get_ports {A[0]}]
set_input_delay -clock [get_clocks clk] -add_delay -max 1.0 [get_ports {B[7]}]
set_input_delay -clock [get_clocks clk] -add_delay -max 1.0 [get_ports {B[6]}]
set_input_delay -clock [get_clocks clk] -add_delay -max 1.0 [get_ports {B[5]}]
set_input_delay -clock [get_clocks clk] -add_delay -max 1.0 [get_ports {B[4]}]
set_input_delay -clock [get_clocks clk] -add_delay -max 1.0 [get_ports {B[3]}]
set_input_delay -clock [get_clocks clk] -add_delay -max 1.0 [get_ports {B[2]}]
set_input_delay -clock [get_clocks clk] -add_delay -max 1.0 [get_ports {B[1]}]
set_input_delay -clock [get_clocks clk] -add_delay -max 1.0 [get_ports {B[0]}]
set_input_delay -clock [get_clocks clk] -add_delay -max 1.0 [get_ports {op_code[2]}]
set_input_delay -clock [get_clocks clk] -add_delay -max 1.0 [get_ports {op_code[1]}]
set_input_delay -clock [get_clocks clk] -add_delay -max 1.0 [get_ports {op_code[0]}]
set_input_delay -clock [get_clocks clk] -add_delay -max 1.0 [get_ports en]
set_output_delay -clock [get_clocks clk] -add_delay -max 1.0 [get_ports {result_out[7]}]
set_output_delay -clock [get_clocks clk] -add_delay -max 1.0 [get_ports {result_out[6]}]
set_output_delay -clock [get_clocks clk] -add_delay -max 1.0 [get_ports {result_out[5]}]
set_output_delay -clock [get_clocks clk] -add_delay -max 1.0 [get_ports {result_out[4]}]
set_output_delay -clock [get_clocks clk] -add_delay -max 1.0 [get_ports {result_out[3]}]
set_output_delay -clock [get_clocks clk] -add_delay -max 1.0 [get_ports {result_out[2]}]
set_output_delay -clock [get_clocks clk] -add_delay -max 1.0 [get_ports {result_out[1]}]
set_output_delay -clock [get_clocks clk] -add_delay -max 1.0 [get_ports {result_out[0]}]
set_output_delay -clock [get_clocks clk] -add_delay -max 1.0 [get_ports flag_carry]
set_output_delay -clock [get_clocks clk] -add_delay -max 1.0 [get_ports flag_zero]
set_dont_use [get_lib_cells slow_vdd1v0/HOLDX1]
set_clock_uncertainty -setup 0.01 [get_ports clk]
set_clock_uncertainty -hold 0.01 [get_ports clk]
