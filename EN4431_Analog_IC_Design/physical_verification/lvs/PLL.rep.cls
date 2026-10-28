##############################################################################################################
#####  
#####                                         PVS LVS COMPARISON
#####  
#####  Version                       :   16.10-p006
#####  NVN Run Start                 :   Mon Jun 22 01:52:13 2026
#####  ERC Summary File              :   PLL.sum
#####  Extraction Report File        :   PLL.rep
#####  Comparison Report File        :   PLL.rep.cls
#####  Top Cell                      :   PLL  <vs>  PLL
#####  
#####                                :      @     @
#####                                :       @   @ 
#####                                :        @ @  
#####  Run Result                    :     MISMATCH
#####                                :        @ @  
#####                                :       @   @ 
#####                                :      @     @
#####  
#####  Run Summary                   :   [ERROR] Connectivity Mismatches
#####                                :   [INFO]  ERC Results: Empty
#####                                :   [INFO]  Extraction Clean
#####  
#####  Layout Design                 :   Epitaxc_new PLL layout
#####  Schematic File                :   /home/user19/PLL_421E/lvs/PLL.cdl (cdl)
#####  Rules File                    :   .config.rul sky130.lvs.v0.0_1.1.pvl
#####  Pin Swap File                 :   PLL.rep.cps
#####  
#####  Extraction CPU Time           :   0h 0m 0s - (0s)
#####  Extraction Exec Time          :   0h 0m 0s - (0s)
#####  Extraction Peak Memory Usage  :   20.00MB
#####  NVN CPU Time                  :   0h 0m 0s - (0s)                 
#####  NVN Exec Time                 :   0h 0m 1s - (1s)                 
#####  NVN Peak Memory Usage         :   224.57MB
#####  LVS Total CPU Time            :   0h 0m 0s - (0s)                 
#####  LVS Total Exec Time           :   0h 0m 1s - (1s)                 
#####  LVS Total Peak Memory Usage   :   224.57MB
#####  
##############################################################################################################


##############################################################################################################
#
#                                            CELL MATCH STATISTICS                                            
#
##############################################################################################################

Cell Statistic Descriptions                  | Count
---------------------------------------------+----------
Cells matched                                |         0
Cells expanded                               |         0
Cells not run                                |         0
Cells which mismatch                         |         1
---------------------------------------------+----------
Total                                        |         1


Cell Statistic Detail                        | Count
---------------------------------------------+----------
Cells with parameter mismatches              |         0
Cells with mismatched instance subtypes      |         0
Cells that have been blackboxed              |         0


##############################################################################################################
#
#                                             CELL MATCH SUMMARY                                              
#
##############################################################################################################

         |     Initial Pins     |     Compare Pins     |              | 
Cell     |   lay    :    sch    |   lay    :    sch    | Status       | Detail
---------+----------+-----------+----------+-----------+--------------+-----------
PLL      |        6 :         6 |        6 :         6 | mismatch     | 


##############################################################################################################
#
#                                                  LVS RULES                                                  
#
##############################################################################################################

Command Line LVS Rule Values
----------------------------

    layout_primary                          PLL {-top_cell PLL}
    schematic_primary                       PLL {-source_top_cell PLL}

LVS Rules Given in the Rules File
---------------------------------

    lvs_abort                               -softchk                               no  
    lvs_abort                               -supply_error                          no  
    layout_path                             /home/user19/PLL_421E/lvs/PLL.gds
    layout_format                           gdsii
    layout_format                           gdsii
    layout_primary                          TOPCELL
    schematic_path                          /home/user19/PLL_421E/lvs/PLL.cdl
    schematic_format                        cdl
    lvs_delete_cell_pin                     cap_vpp_02p4x04p6_m1m2_noshield b -source
    lvs_delete_cell_pin                     cap_vpp_02p7x06p1_m1m2m3m4_shieldl1_fingercap b -source
    lvs_delete_cell_pin                     cap_vpp_02p7x11p1_m1m2m3m4_shieldl1_fingercap b -source
    lvs_delete_cell_pin                     cap_vpp_02p7x21p1_m1m2m3m4_shieldl1_fingercap b -source
    lvs_delete_cell_pin                     cap_vpp_02p7x41p1_m1m2m3m4_shieldl1_fingercap b -source
    lvs_delete_cell_pin                     cap_vpp_02p9x06p1_m1m2m3m4_shieldl1_fingercap2 b -source
    lvs_delete_cell_pin                     cap_vpp_04p4x04p6_l1m1m2_noshield b -source
    lvs_delete_cell_pin                     cap_vpp_04p4x04p6_l1m1m2_shieldpo_floatm3 b -source
    lvs_delete_cell_pin                     cap_vpp_04p4x04p6_m1m2m3_shieldl1 b -source
    lvs_delete_cell_pin                     cap_vpp_04p4x04p6_m1m2m3_shieldl1m5_floatm4 b -source
    lvs_delete_cell_pin                     cap_vpp_04p4x04p6_m1m2_noshield b -source
    lvs_delete_cell_pin                     cap_vpp_04p4x04p6_m1m2_noshield_o2 b -source
    lvs_delete_cell_pin                     cap_vpp_04p4x04p6_m1m2_shieldl1 b -source
    lvs_delete_cell_pin                     cap_vpp_05p9x05p9_m1m2m3m4_shieldl1_wafflecap b -source
    lvs_delete_cell_pin                     cap_vpp_06p8x06p1_l1m1m2m3_shieldpom4 b -source
    lvs_delete_cell_pin                     cap_vpp_06p8x06p1_m1m2m3_shieldl1m4 b -source
    lvs_delete_cell_pin                     cap_vpp_08p6x07p8_l1m1m2_noshield b -source
    lvs_delete_cell_pin                     cap_vpp_08p6x07p8_l1m1m2_shieldpo_floatm3 b -source
    lvs_delete_cell_pin                     cap_vpp_08p6x07p8_m1m2m3_shieldl1 b -source
    lvs_delete_cell_pin                     cap_vpp_08p6x07p8_m1m2m3_shieldl1m5_floatm4 b -source
    lvs_delete_cell_pin                     cap_vpp_08p6x07p8_m1m2_noshield b -source
    lvs_delete_cell_pin                     cap_vpp_08p6x07p8_m1m2_shieldl1 b -source
    lvs_delete_cell_pin                     cap_vpp_11p3x11p3_m1m2m3m4_shieldl1_wafflecap b -source
    lvs_delete_cell_pin                     cap_vpp_11p5x11p7_l1m1m2m3m4_shieldm5 b -source
    lvs_delete_cell_pin                     cap_vpp_11p5x11p7_l1m1m2m3m4_shieldpom5 b -source
    lvs_delete_cell_pin                     cap_vpp_11p5x11p7_l1m1m2m3_shieldm4 b -source
    lvs_delete_cell_pin                     cap_vpp_11p5x11p7_l1m1m2m3_shieldpom4 b -source
    lvs_delete_cell_pin                     cap_vpp_11p5x11p7_l1m1m2_noshield b -source
    lvs_delete_cell_pin                     cap_vpp_11p5x11p7_l1m1m2_shieldpom3 b -source
    lvs_delete_cell_pin                     cap_vpp_11p5x11p7_m1m2m3m4_shieldl1m5 b -source
    lvs_delete_cell_pin                     cap_vpp_11p5x11p7_m1m2m3m4_shieldm5 b -source
    lvs_delete_cell_pin                     cap_vpp_11p5x11p7_m1m2m3_shieldl1 b -source
    lvs_delete_cell_pin                     cap_vpp_11p5x11p7_m1m2m3_shieldl1m5_floatm4 b -source
    lvs_delete_cell_pin                     cap_vpp_11p5x11p7_m1m2_noshield b -source
    lvs_delete_cell_pin                     cap_vpp_11p5x11p7_m1m2_shieldl1 b -source
    lvs_delete_cell_pin                     cap_vpp_11p5x11p7_m1m4_noshield b -source
    lvs_delete_cell_pin                     cap_vpp_04p4x04p6_l1m1m2_noshield top -source
    lvs_black_box                           cap_vpp_02p4x04p6_m1m2_noshield -black
    lvs_black_box                           cap_vpp_02p7x06p1_m1m2m3m4_shieldl1_fingercap -black
    lvs_black_box                           cap_vpp_02p7x11p1_m1m2m3m4_shieldl1_fingercap -black
    lvs_black_box                           cap_vpp_02p7x21p1_m1m2m3m4_shieldl1_fingercap -black
    lvs_black_box                           cap_vpp_02p7x41p1_m1m2m3m4_shieldl1_fingercap -black
    lvs_black_box                           cap_vpp_02p9x06p1_m1m2m3m4_shieldl1_fingercap2 -black
    lvs_black_box                           cap_vpp_04p4x04p6_l1m1m2_noshield -black
    lvs_black_box                           cap_vpp_04p4x04p6_l1m1m2_shieldpo_floatm3 -black
    lvs_black_box                           cap_vpp_04p4x04p6_m1m2m3_shieldl1 -black
    lvs_black_box                           cap_vpp_04p4x04p6_m1m2m3_shieldl1m5_floatm4 -black
    lvs_black_box                           cap_vpp_04p4x04p6_m1m2_noshield -black
    lvs_black_box                           cap_vpp_04p4x04p6_m1m2_noshield_o2 -black
    lvs_black_box                           cap_vpp_04p4x04p6_m1m2_shieldl1 -black
    lvs_black_box                           cap_vpp_05p9x05p9_m1m2m3m4_shieldl1_wafflecap -black
    lvs_black_box                           cap_vpp_06p8x06p1_l1m1m2m3_shieldpom4 -black
    lvs_black_box                           cap_vpp_06p8x06p1_m1m2m3_shieldl1m4 -black
    lvs_black_box                           cap_vpp_08p6x07p8_l1m1m2_noshield -black
    lvs_black_box                           cap_vpp_08p6x07p8_l1m1m2_shieldpo_floatm3 -black
    lvs_black_box                           cap_vpp_08p6x07p8_m1m2m3_shieldl1 -black
    lvs_black_box                           cap_vpp_08p6x07p8_m1m2m3_shieldl1m5_floatm4 -black
    lvs_black_box                           cap_vpp_08p6x07p8_m1m2_noshield -black
    lvs_black_box                           cap_vpp_08p6x07p8_m1m2_shieldl1 -black
    lvs_black_box                           cap_vpp_11p3x11p3_m1m2m3m4_shieldl1_wafflecap -black
    lvs_black_box                           cap_vpp_11p5x11p7_l1m1m2m3m4_shieldm5 -black
    lvs_black_box                           cap_vpp_11p5x11p7_l1m1m2m3m4_shieldpom5 -black
    lvs_black_box                           cap_vpp_11p5x11p7_l1m1m2m3_shieldm4 -black
    lvs_black_box                           cap_vpp_11p5x11p7_l1m1m2m3_shieldpom4 -black
    lvs_black_box                           cap_vpp_11p5x11p7_l1m1m2_noshield -black
    lvs_black_box                           cap_vpp_11p5x11p7_l1m1m2_shieldpom3 -black
    lvs_black_box                           cap_vpp_11p5x11p7_m1m2m3m4_shieldl1m5 -black
    lvs_black_box                           cap_vpp_11p5x11p7_m1m2m3m4_shieldm5 -black
    lvs_black_box                           cap_vpp_11p5x11p7_m1m2m3_shieldl1 -black
    lvs_black_box                           cap_vpp_11p5x11p7_m1m2m3_shieldl1m5_floatm4 -black
    lvs_black_box                           cap_vpp_11p5x11p7_m1m2_noshield -black
    lvs_black_box                           cap_vpp_11p5x11p7_m1m2_shieldl1 -black
    lvs_black_box                           cap_vpp_11p5x11p7_m1m4_noshield -black
                                             
    lvs_cdn_flow_options                    -cdl_use_scale
                                             
    lvs_ignore_ports                        no  
    lvs_find_shorts                         no  
    lvs_break_ambig_max                     32
                                             
    lvs_reduce_split_gates                  no  
    lvs_recognize_gates                     -all
    lvs_recognize_gates                     -none
    lvs_recognize_gates                     -none
    lvs_reduce                              no  -series_mos
    lvs_reduce                              yes -parallel_mos
    lvs_reduce_device                       MN ( nfet_20v0 ) -parallel ...
    lvs_reduce_device                       MN ( nfet_20v0_zvt ) -parallel ...
    lvs_reduce_device                       MP ( pfet_20v0 ) -parallel ...
    lvs_reduce_device                       Q -parallel yes ...
                                             
    lvs_expand_cell_on_error                no  
                                             
    lvs_check_property                      D ( diode_pd2nw_05v5 ) a a -tolerance 1
    lvs_check_property                      D ( diode_pd2nw_05v5 ) p p -tolerance 1
    lvs_check_property                      D ( diode_pw2nd_05v5 ) a a -tolerance 1
    lvs_check_property                      D ( diode_pw2nd_05v5 ) p p -tolerance 1
    lvs_check_property                      D ( diode_pd2nw_05v5_hvt ) a a -tolerance 1
    lvs_check_property                      D ( diode_pd2nw_05v5_hvt ) p p -tolerance 1
    lvs_check_property                      D ( diode_pd2nw_05v5_lvt ) a a -tolerance 1
    lvs_check_property                      D ( diode_pd2nw_05v5_lvt ) p p -tolerance 1
    lvs_check_property                      D ( diode_pd2nw_11v0 ) a a -tolerance 1
    lvs_check_property                      D ( diode_pd2nw_11v0 ) p p -tolerance 1
    lvs_check_property                      D ( diode_pw2nd_05v5_lvt ) a a -tolerance 1
    lvs_check_property                      D ( diode_pw2nd_05v5_lvt ) p p -tolerance 1
    lvs_check_property                      D ( diode_pw2nd_05v5_nvt ) a a -tolerance 1
    lvs_check_property                      D ( diode_pw2nd_05v5_nvt ) p p -tolerance 1
    lvs_check_property                      D ( diode_pw2nd_11v0 ) a a -tolerance 1
    lvs_check_property                      D ( diode_pw2nd_11v0 ) p p -tolerance 1
    lvs_check_property                      MN ( nfet_20v0 ) w w
    lvs_check_property                      MN ( nfet_20v0 ) l l
    lvs_check_property                      MN ( nfet_20v0_zvt ) w w
    lvs_check_property                      MN ( nfet_20v0_zvt ) l l
    lvs_check_property                      MP ( pfet_20v0 ) w w
    lvs_check_property                      MP ( pfet_20v0 ) l l
    lvs_check_property                      Q EA EA -tolerance 0
    lvs_check_property                      Q M M -tolerance 0
    lvs_check_property                      MP L l
    lvs_check_property                      MP W w
    lvs_check_property                      MN L l
    lvs_check_property                      MN W w
    lvs_check_property                      R W W
    lvs_check_property                      R L L
    lvs_check_property                      C L L
    lvs_check_property                      C W W
    lvs_report_file                         PLL.rep
    lvs_report_max                          50 -mismatched_net_limit 100 
    lvs_short_equivalent_nodes              yes
    virtual_connect                         no  -colon
    virtual_connect                         yes -semicolon_as_colon
    virtual_connect                         no  -report
    virtual_connect                         -depth primary
                                             

Default LVS Rule Values
-----------------------

    layout_case_sensitive                   no
    // layout_cpf_file                       
    // schematic_cpf_file                    
    schematic_case_sensitive                no
    // hcell_file                            
    // hcell                                 
    // lvs_exclude_hcell                     
    lvs_push_devices                        yes
    lvs_push_devices_properties             no
    lvs_netlist                             yes -substrate_comment
    lvs_netlist                             yes -box_contents
    lvs_netlist                             yes -unnamed_box_pins
    lvs_netlist                             no -allow_inconsistent_model
    // lvs_write_netlist                     
    // lvs_write_netlist_reduced             
    lvs_spice                               yes -allow_floating_pins
    lvs_spice                               yes -allow_duplicate_subcircuit_names
    lvs_spice                               no  -conditional_ldd
    lvs_spice                               no  -prefer_pins
    lvs_spice                               no  -override_globals
    lvs_spice                               no  -redefine_param
    lvs_spice                               no  -replicate_devices
    lvs_spice                               yes -slash_is_space
    lvs_spice                               yes -keep_back_slash
    lvs_spice                               no  -allow_unquoted_strings
    lvs_spice                               no  -allow_inline_parameters
    lvs_spice                               no  -calculate_mos_area
    lvs_spice                               no  -strict_wl
    lvs_spice                               no  -cull_primitive_subcircuits
    lvs_spice                               no  -ignore_option_scale
    lvs_spice                               no  -show_neg_param_warning
    lvs_spice                               no  -scale_x_parameters
    // lvs_spice_option                      
    lvs_reverse_wl                          no
    // lvs_spice_multiplier_name             
                                             
    lvs_compare_case                        no
    lvs_cname                               no  -cell
    lvs_cname                               yes -pin
    lvs_cname                               yes -net
    lvs_cname                               no  -instance
    lvs_non_user_name                       -port "^[0-9]+$"
    lvs_non_user_name                       -net  "^[0-9]+$"
    // lvs_non_user_name                    -instance 
    lvs_out_of_range_exclude_zero           no
    // lvs_group_models                      
    lvs_strict_subtypes                     no
    // lvs_cpoint                            
    // lvs_power_name                        
    // lvs_ground_name                       
    // lvs_cell_list                         
    // lvs_device_type                       
                                             
    lvs_auto_pin_swap                       yes -swap_threshold 4000000
    lvs_swap_non_cpoint_pins                yes
    // lvs_swap_pins                         
    lvs_all_cap_pins_swappable              no
    lvs_builtin_device_pin_swap             yes
    // lvs_join_nets                         
    lvs_compare_port_names                  no
    lvs_global_sigs_are_ports               yes
    lvs_discard_pins                        no
                                             
    lvs_filter                              no  -bipolar
    lvs_filter                              no  -capacitors
    lvs_filter                              no  -diodes
    lvs_filter                              no  -mos
    lvs_filter                              no  -resistors
    // lvs_filter_option                     
    // lvs_filter_device                     
                                             
    lvs_reduction_priority                  -parallel
    lvs_derive_logic                        yes -sram
    lvs_derive_logic                        no  -dram
    lvs_derive_logic                        no  -rom
    // lvs_recognize_gates_tolerance         
    lvs_reduce                              yes -parallel_bipolar
    lvs_reduce                              yes -parallel_caps
    lvs_reduce                              yes -series_caps
    lvs_reduce                              yes -parallel_diodes
    lvs_reduce                              no  -series_diodes
    lvs_reduce                              yes -parallel_resistors
    lvs_reduce                              yes -series_resistors
    // lvs_reduce_do_not_merge               
                                             
    lvs_expand_on_device_climbing           no
    lvs_expand_unbalanced_cells             yes
                                             
    // lvs_property_map                      
    // lvs_transfer_property                 
    // lvs_report_opt                        
    lvs_report_units                        yes
    lvs_keep_data                           no
    lvs_keep_source_cells                   no
    lvs_create_match_db                     no
    // lvs_map_device                        
    unit                                    -length u
    unit                                    -resistance ohm
    unit                                    -capacitance pf
    lvs_verilog_bus_map_by_position         no
    lvs_verilog_keep_backslash              no
    lvs_do_not_normalize                    no
    // lvs_generic_device                    
    input_scale                             1000
    virtual_connect                         no  -colon
    virtual_connect                         yes -semicolon_as_colon
    // virtual_connect                      -name 
    virtual_connect                         no -report
    virtual_connect                         no -incremental
    lvs_preserve_parameterized_cells        no
    lvs_check_color                         no
    // lvs_schematic_color_path              
    // lvs_assign_conflict_layer             
    // lvs_conflict_layer_check             
    lvs_check_color_label                   no
    // lvs_preserve_cells                    
                                             

Effective LVS Rule Values
-------------------------

    lvs_swap_non_cpoint_pins                yes -unbound_pin_threshold 10000
    layout_primary                          PLL
    lvs_recognize_gates                     -all
    virtual_connect                         no  -report


##############################################################################################################
#
#                                               CELL COMPARISON                                               
#
##############################################################################################################

                              ##################################################
                              #                                                #
                              #       ------->>> $ MISMATCH $ <<<-------       #
                              #                                                #
                              #                 PLL  <vs>  PLL                 #
                              #                                                #
                              #            CONNECTIVITY MISMATCHES             #
                              #                                                #
                              ##################################################

+===[PLL]=====================================================================================================
|                                                 STATISTICS                                                  
+=============================================================================================================


                            |     Original      |      Reduced      |     Unmatched     
Cell                        |   lay   :   sch   |   lay   :   sch   |   lay   :   sch
----------------------------+---------+---------+---------+---------+---------+---------
MP [4 pins]                 |         :         |         :         |         :         
 MP(PFET_01V8_HVT)          |     133 :     133 |      77 :      77 |       0 :        0
 MP(PFET_01V8_LVT)          |      17 :      17 |       5 :       5 |       0 :        0
 MP:ParMos2#1  .  .  .  .  .|.  .   - :.  .   - |.  .   8 :.  .   8 |.  .   0 :.  .  . 0
 MP:SerMos2#1               |       - :       - |      22 :      22 |       0 :        0
 MP:SerMos3#1  .  .  .  .  .|.  .   - :.  .   - |.  .   8 :.  .   8 |.  .   0 :.  .  . 0
MN [4 pins]                 |         :         |         :         |         :         
 MN(NFET_01V8) .  .  .  .  .|.  . 133 :.  . 133 |.  .  57 :.  .  57 |.  .   0 :.  .  . 0
 MN(NFET_01V8_LVT)          |     *22 :      18 |       6 :       6 |       0 :        0
 MN:SerMos2#1  .  .  .  .  .|.  .   - :.  .   - |.  .  32 :.  .  32 |.  .   0 :.  .  . 0
 MN:SerMos3#1               |       - :       - |       8 :       8 |       0 :        0
(-, R [3 pins])   .  .  .  .|.  .  .  :.  .  .  |.  .  .  :.  .  .  |.  .  .  :.  .  .  
 (-, R(RES_GENERIC_PD))     |      *0 :       2 |      *0 :       2 |      *0 :        2
(R [2 pins], -)             |         :         |         :         |         :         
 (R(RES_GENERIC_PD), -)     |      *2 :       0 |      *2 :       0 |      *2 :        0
----------------------------+---------+---------+---------+---------+---------+---------
Total                       |     307 :     303 |     225 :     225 |       2 :        2
============================+=========+=========+=========+=========+=========+=========
Pins                        |         :         |       6 :       6 |       0 :        0
Nets                        |         :         |      85 :      85 |       0 :        0
============================+=========+=========+=========+=========+=========+=========

+===[PLL]=====================================================================================================
|                                      DEVICES REMOVED DURING REDUCTION                                       
+=============================================================================================================


                       |     Parallel      |      Series       |     Deleted Nets     
Cell                   |   lay   :   sch   |   lay   :   sch   |    lay    :   sch
-----------------------+---------+---------+---------+---------+-----------+----------
MN [4 pins]            |         :         |         :         |           :          
 MN(NFET_01V8_LVT)     |       4 :       - |       - :       - |         0 :         0
-----------------------+---------+---------+---------+---------+-----------+----------

+===[PLL]=====================================================================================================
|                                           INITIAL CORRESPONDENCES                                           
+=============================================================================================================

Type     | Name
---------+--------------------------------
Pin      | C1 C2 VDD! vfvout vref VSS!


+===[PLL]=====================================================================================================
|                                            MISMATCHED INSTANCES                                             
+=============================================================================================================
                                                                                     
                                                                                     
Layout Inst : ** missing inst **            | Schematic Inst : RR0
Layout Model:                               | Schematic Model: R(RES_GENERIC_PD)
============================================+==================================(mi 1)
                                                                                     
                                                                                     
Layout Inst : ** missing inst **            | Schematic Inst : RR2
Layout Model:                               | Schematic Model: R(RES_GENERIC_PD)
============================================+==================================(mi 2)
                                                                                     
                                                                                     
Layout Inst : X28/R0 @(-100.550,44.035)     | Schematic Inst : ** missing inst **
Layout Model: R(RES_GENERIC_PD)             | Schematic Model: 
============================================+==================================(mi 3)
                                                                                     
                                                                                     
Layout Inst : X29/R0 @(-97.945,59.035)      | Schematic Inst : ** missing inst **
Layout Model: R(RES_GENERIC_PD)             | Schematic Model: 
============================================+==================================(mi 4)


##############################################################################################################
#
#                                                END OF REPORT                                                
#
##############################################################################################################

