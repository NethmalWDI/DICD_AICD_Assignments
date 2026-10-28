#######################################################
#                                                     
#  Innovus Command Logging File                     
#  Created on Wed Dec 10 16:20:00 2025                
#                                                     
#######################################################

#@(#)CDS: Innovus v18.10-p002_1 (64bit) 05/29/2018 19:19 (Linux 2.6.18-194.el5)
#@(#)CDS: NanoRoute 18.10-p002_1 NR180522-1057/18_10-UB (database version 2.30, 418.7.1) {superthreading v1.46}
#@(#)CDS: AAE 18.10-p004 (64bit) 05/29/2018 (Linux 2.6.18-194.el5)
#@(#)CDS: CTE 18.10-p003_1 () May 15 2018 10:23:07 ( )
#@(#)CDS: SYNTECH 18.10-a012_1 () Apr 19 2018 01:27:21 ( )
#@(#)CDS: CPE v18.10-p005
#@(#)CDS: IQRC/TQRC 18.1.1-s118 (64bit) Fri Mar 23 17:23:45 PDT 2018 (Linux 2.6.18-194.el5)

set_global _enable_mmmc_by_default_flow      $CTE::mmmc_default
suppressMessage ENCEXT-2799
getVersion
win
save_global Default_alu.globals
set init_gnd_net GND
set init_lef_file {../input/libs/gsclib045/lef/gsclib045_tech.lef ../input/libs/gsclib045/lef/gsclib045_multibitsDFF.lef ../input/libs/gsclib045/lef/gsclib045_macro.lef}
set init_design_settop 0
set init_verilog ../output/alu_top_innovus.v
set init_mmmc_file ../output/alu.view
set init_io_file ../output/pads_alu.io
set init_pwr_net VDD
init_design
fit
