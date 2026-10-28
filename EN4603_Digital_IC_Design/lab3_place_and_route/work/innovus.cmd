#######################################################
#                                                     
#  Innovus Command Logging File                     
#  Created on Tue Dec  9 23:27:42 2025                
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
save_global Default.globals
set init_gnd_net GND
set init_lef_file {../input/libs/gsclib045/lef/gsclib045_tech.lef ../input/libs/gsclib045/lef/gsclib045_multibitsDFF.lef ../input/libs/gsclib045/lef/gsclib045_macro.lef}
set init_design_settop 0
set init_verilog ../input/uart_top_2.v
set init_mmmc_file ../input/uart_top.view
set init_pwr_net VDD
init_design
defIn ../input/uart_top_2_scanDEF.scandef
setDesignMode -process 45
getIoFlowFlag
setIoFlowFlag 0
floorPlan -site CoreSite -r 1.0 0.4 5.0 5.0 5.0 5.0
uiSetTool select
getIoFlowFlag
fit
setIoFlowFlag 0
floorPlan -site CoreSite -r 0.963970588235 0.399297 5.0 5.13 5.0 5.13
uiSetTool select
getIoFlowFlag
fit
gui_select -rect {19.227 32.258 40.057 19.759}
zoomBox 40.057 19.759 61.546 6.274
fit
set sprCreateIeRingOffset 1.0
set sprCreateIeRingThreshold 1.0
set sprCreateIeRingJogDistance 1.0
set sprCreateIeRingLayers {}
set sprCreateIeRingOffset 1.0
set sprCreateIeRingThreshold 1.0
set sprCreateIeRingJogDistance 1.0
set sprCreateIeRingLayers {}
set sprCreateIeStripeWidth 10.0
set sprCreateIeStripeThreshold 1.0
set sprCreateIeStripeWidth 10.0
set sprCreateIeStripeThreshold 1.0
set sprCreateIeRingOffset 1.0
set sprCreateIeRingThreshold 1.0
set sprCreateIeRingJogDistance 1.0
set sprCreateIeRingLayers {}
set sprCreateIeStripeWidth 10.0
set sprCreateIeStripeThreshold 1.0
setAddRingMode -ring_target default -extend_over_row 0 -ignore_rows 0 -avoid_short 0 -skip_crossing_trunks none -stacked_via_top_layer Metal11 -stacked_via_bottom_layer Metal1 -via_using_exact_crossover_size 1 -orthogonal_only true -skip_via_on_pin {  standardcell } -skip_via_on_wire_shape {  noshape }
addRing -nets {VDD GND} -type core_rings -follow core -layer {top Metal7 bottom Metal7 left Metal8 right Metal8} -width {top 1 bottom 1 left 1 right 1} -spacing {top 0.8 bottom 0.8 left 0.8 right 0.8} -offset {top 0.8 bottom 0.8 left 0.8 right 0.8} -center 0 -extend_corner {} -threshold 0 -jog_distance 0 -snap_wire_center_to_grid None
setAddRingMode -ring_target default -extend_over_row 0 -ignore_rows 0 -avoid_short 0 -skip_crossing_trunks none -stacked_via_top_layer Metal11 -stacked_via_bottom_layer Metal1 -via_using_exact_crossover_size 1 -orthogonal_only true -skip_via_on_pin {  standardcell } -skip_via_on_wire_shape {  noshape }
addRing -nets {VDD GND} -type core_rings -follow core -layer {top Metal7 bottom Metal7 left Metal8 right Metal8} -width {top 1 bottom 1 left 1 right 1} -spacing {top 0.8 bottom 0.8 left 0.8 right 0.8} -offset {top 0.8 bottom 0.8 left 0.8 right 0.8} -center 0 -extend_corner {} -threshold 0 -jog_distance 0 -snap_wire_center_to_grid None
set sprCreateIeRingOffset 1.0
set sprCreateIeRingThreshold 1.0
set sprCreateIeRingJogDistance 1.0
set sprCreateIeRingLayers {}
set sprCreateIeRingOffset 1.0
set sprCreateIeRingThreshold 1.0
set sprCreateIeRingJogDistance 1.0
set sprCreateIeRingLayers {}
set sprCreateIeStripeWidth 10.0
set sprCreateIeStripeThreshold 1.0
set sprCreateIeStripeWidth 10.0
set sprCreateIeStripeThreshold 1.0
set sprCreateIeRingOffset 1.0
set sprCreateIeRingThreshold 1.0
set sprCreateIeRingJogDistance 1.0
set sprCreateIeRingLayers {}
set sprCreateIeStripeWidth 10.0
set sprCreateIeStripeThreshold 1.0
setAddStripeMode -ignore_block_check false -break_at none -route_over_rows_only false -rows_without_stripes_only false -extend_to_closest_target none -stop_at_last_wire_for_area false -partial_set_thru_domain false -ignore_nondefault_domains false -trim_antenna_back_to_shape none -spacing_type edge_to_edge -spacing_from_block 0 -stripe_min_length stripe_width -stacked_via_top_layer Metal11 -stacked_via_bottom_layer Metal1 -via_using_exact_crossover_size false -split_vias false -orthogonal_only true -allow_jog { padcore_ring  block_ring } -skip_via_on_pin {  standardcell } -skip_via_on_wire_shape {  noshape   }
addStripe -nets {VDD GND} -layer Metal7 -direction horizontal -width 1 -spacing 0.8 -number_of_sets 3 -start_from bottom -start_offset 15 -stop_offset 15 -switch_layer_over_obs false -max_same_layer_jog_length 2 -padcore_ring_top_layer_limit Metal11 -padcore_ring_bottom_layer_limit Metal1 -block_ring_top_layer_limit Metal11 -block_ring_bottom_layer_limit Metal1 -use_wire_group 0 -snap_wire_center_to_grid None
setAddStripeMode -ignore_block_check false -break_at none -route_over_rows_only false -rows_without_stripes_only false -extend_to_closest_target none -stop_at_last_wire_for_area false -partial_set_thru_domain false -ignore_nondefault_domains false -trim_antenna_back_to_shape none -spacing_type edge_to_edge -spacing_from_block 0 -stripe_min_length stripe_width -stacked_via_top_layer Metal11 -stacked_via_bottom_layer Metal1 -via_using_exact_crossover_size false -split_vias false -orthogonal_only true -allow_jog { padcore_ring  block_ring } -skip_via_on_pin {  standardcell } -skip_via_on_wire_shape {  noshape   }
addStripe -nets {VDD GND} -layer Metal8 -direction vertical -width 1 -spacing 0.8 -number_of_sets 3 -start_from left -start_offset 15 -stop_offset 15 -switch_layer_over_obs false -max_same_layer_jog_length 2 -padcore_ring_top_layer_limit Metal11 -padcore_ring_bottom_layer_limit Metal1 -block_ring_top_layer_limit Metal11 -block_ring_bottom_layer_limit Metal1 -use_wire_group 0 -snap_wire_center_to_grid None
setAddStripeMode -ignore_block_check false -break_at none -route_over_rows_only false -rows_without_stripes_only false -extend_to_closest_target none -stop_at_last_wire_for_area false -partial_set_thru_domain false -ignore_nondefault_domains false -trim_antenna_back_to_shape none -spacing_type edge_to_edge -spacing_from_block 0 -stripe_min_length stripe_width -stacked_via_top_layer Metal11 -stacked_via_bottom_layer Metal1 -via_using_exact_crossover_size false -split_vias false -orthogonal_only true -allow_jog { padcore_ring  block_ring } -skip_via_on_pin {  standardcell } -skip_via_on_wire_shape {  noshape   }
addStripe -nets {VDD GND} -layer Metal8 -direction vertical -width 1 -spacing 0.8 -number_of_sets 3 -start_from left -start_offset 15 -stop_offset 15 -switch_layer_over_obs false -max_same_layer_jog_length 2 -padcore_ring_top_layer_limit Metal11 -padcore_ring_bottom_layer_limit Metal1 -block_ring_top_layer_limit Metal11 -block_ring_bottom_layer_limit Metal1 -use_wire_group 0 -snap_wire_center_to_grid None
getPinAssignMode -pinEditInBatch -quiet
setPinAssignMode -pinEditInBatch true
editPin -fixOverlap 1 -unit MICRON -spreadDirection clockwise -side Top -layer 1 -spreadType center -spacing 5 -pin {clk_a clk_b reset_a reset_b rx_data_rd_enable_in_a rx_data_rd_enable_in_b rx_full_a rx_full_b}
setPinAssignMode -pinEditInBatch false
getPinAssignMode -pinEditInBatch -quiet
setPinAssignMode -pinEditInBatch true
editPin -fixOverlap 1 -unit MICRON -spreadDirection clockwise -side Left -layer 1 -spreadType center -spacing 5 -pin {{rx_parallel_data_out_a[0]} {rx_parallel_data_out_a[1]} {rx_parallel_data_out_a[2]} {rx_parallel_data_out_a[3]} {rx_parallel_data_out_a[4]} {rx_parallel_data_out_a[5]} {rx_parallel_data_out_a[6]} {rx_parallel_data_out_a[7]} {rx_parallel_data_out_b[0]} {rx_parallel_data_out_b[1]} {rx_parallel_data_out_b[2]} {rx_parallel_data_out_b[3]} {rx_parallel_data_out_b[4]} {rx_parallel_data_out_b[5]} {rx_parallel_data_out_b[6]} {rx_parallel_data_out_b[7]}}
setPinAssignMode -pinEditInBatch false
getPinAssignMode -pinEditInBatch -quiet
setPinAssignMode -pinEditInBatch true
editPin -fixOverlap 1 -unit MICRON -spreadDirection clockwise -side Bottom -layer 1 -spreadType center -spacing 5 -pin {rx_parity_error_a rx_parity_error_b rx_stop_bit_error_a rx_stop_bit_error_b scan_in_a scan_in_b scan_out_a scan_out_b SE tx_busy_out_a tx_busy_out_b tx_data_wr_enable_in_a tx_data_wr_enable_in_b}
setPinAssignMode -pinEditInBatch false
getPinAssignMode -pinEditInBatch -quiet
setPinAssignMode -pinEditInBatch true
editPin -fixOverlap 1 -unit MICRON -spreadDirection clockwise -side Right -layer 1 -spreadType center -spacing 5 -pin {{tx_parallel_data_in_a[0]} {tx_parallel_data_in_a[1]} {tx_parallel_data_in_a[2]} {tx_parallel_data_in_a[3]} {tx_parallel_data_in_a[4]} {tx_parallel_data_in_a[5]} {tx_parallel_data_in_a[6]} {tx_parallel_data_in_a[7]} {tx_parallel_data_in_b[0]} {tx_parallel_data_in_b[1]} {tx_parallel_data_in_b[2]} {tx_parallel_data_in_b[3]} {tx_parallel_data_in_b[4]} {tx_parallel_data_in_b[5]} {tx_parallel_data_in_b[6]} {tx_parallel_data_in_b[7]}}
setPinAssignMode -pinEditInBatch false
getPinAssignMode -pinEditInBatch -quiet
setPinAssignMode -pinEditInBatch true
editPin -pinWidth 0.06 -pinDepth 0.335 -fixOverlap 1 -unit MICRON -spreadDirection clockwise -side Right -layer 1 -spreadType center -spacing -5.13 -pin {{tx_parallel_data_in_a[0]} {tx_parallel_data_in_a[1]} {tx_parallel_data_in_a[2]} {tx_parallel_data_in_a[3]} {tx_parallel_data_in_a[4]} {tx_parallel_data_in_a[5]} {tx_parallel_data_in_a[6]} {tx_parallel_data_in_a[7]} {tx_parallel_data_in_b[0]} {tx_parallel_data_in_b[1]} {tx_parallel_data_in_b[2]} {tx_parallel_data_in_b[3]} {tx_parallel_data_in_b[4]} {tx_parallel_data_in_b[5]} {tx_parallel_data_in_b[6]} {tx_parallel_data_in_b[7]}}
setPinAssignMode -pinEditInBatch false
saveDesign uart_top_prePlacement
setRouteMode -earlyGlobalHonorMsvRouteConstraint false -earlyGlobalRoutePartitionPinGuide true
setEndCapMode -reset
setEndCapMode -boundary_tap false
setNanoRouteMode -quiet -droutePostRouteSpreadWire 1
setNanoRouteMode -quiet -droutePostRouteWidenWireRule LEFSpecialRouteSpec
setNanoRouteMode -quiet -timingEngine {}
setUsefulSkewMode -maxSkew false -noBoundary false -useCells {DLY4X4 DLY4X1 DLY3X4 DLY3X1 DLY2X4 DLY2X1 DLY1X4 DLY1X1 CLKBUFX8 CLKBUFX6 CLKBUFX4 CLKBUFX3 CLKBUFX20 CLKBUFX2 CLKBUFX16 CLKBUFX12 BUFX8 BUFX6 BUFX4 BUFX3 BUFX20 BUFX2 BUFX16 BUFX12 INVXL INVX8 INVX6 INVX4 INVX3 INVX20 INVX2 INVX16 INVX12 INVX1 CLKINVX8 CLKINVX6 CLKINVX4 CLKINVX3 CLKINVX20 CLKINVX2 CLKINVX16 CLKINVX12 CLKINVX1} -maxAllowedDelay 1
setPlaceMode -fp false
place_design
setLayerPreference net -isVisible 0
setLayerPreference power -isVisible 0
setLayerPreference pgPower -isVisible 0
setLayerPreference pgGround -isVisible 0
setLayerPreference node_net -isVisible 1
setLayerPreference node_net -isVisible 0
setLayerPreference clock -isVisible 1
reportGateCount -level 5 -limit 100 -outfile uart_top_optPlace.gateCount
redirect -quiet {set honorDomain [getAnalysisMode -honorClockDomains]} > /dev/null
timeDesign -preCTS -pathReports -drvReports -slackReports -numPaths 50 -prefix uart_top_preCTS -outDir ../report/pre_CTS
setSrouteMode -viaConnectToShape { noshape }
sroute -connect { blockPin padPin padRing corePin floatingStripe } -layerChangeRange { Metal1(1) Metal11(11) } -blockPinTarget { nearestTarget } -padPinPortConnect { allPort oneGeom } -padPinTarget { nearestTarget } -corePinTarget { firstAfterRowEnd } -floatingStripeTarget { blockring padring ring stripe ringpin blockpin followpin } -allowJogging 1 -crossoverViaLayerRange { Metal1(1) Metal11(11) } -nets { VDD GND } -allowLayerChange 1 -blockPin useLef -targetViaLayerRange { Metal1(1) Metal11(11) }
setSrouteMode -viaConnectToShape { noshape }
sroute -connect { blockPin padPin padRing corePin floatingStripe } -layerChangeRange { Metal1(1) Metal11(11) } -blockPinTarget { nearestTarget } -padPinPortConnect { allPort oneGeom } -padPinTarget { nearestTarget } -corePinTarget { firstAfterRowEnd } -floatingStripeTarget { blockring padring ring stripe ringpin blockpin followpin } -allowJogging 1 -crossoverViaLayerRange { Metal1(1) Metal11(11) } -nets { VDD GND } -allowLayerChange 1 -blockPin useLef -targetViaLayerRange { Metal1(1) Metal11(11) }
setLayerPreference pgPower -isVisible 1
setLayerPreference pgPower -isVisible 0
setLayerPreference pgPower -isVisible 1
setLayerPreference node_net -isVisible 1
fit
saveDesign uart_top_preCTS
ccopt_design
setLayerPreference node_net -isVisible 0
setLayerPreference node_net -isVisible 1
setLayerPreference node_net -isVisible 0
setLayerPreference node_net -isVisible 1
scanReorder -skipMode skipNone -allowSwapping false -keepPDPorts true -clkAware true
redirect -quiet {set honorDomain [getAnalysisMode -honorClockDomains]} > /dev/null
timeDesign -postCTS -hold -pathReports -slackReports -numPaths 50 -prefix uart_top_postCTS -outDir ../report/post_CTS
setNanoRouteMode -quiet -routeTopRoutingLayer default
setNanoRouteMode -quiet -routeBottomRoutingLayer default
setNanoRouteMode -quiet -drouteEndIteration default
setNanoRouteMode -quiet -routeWithTimingDriven false
setNanoRouteMode -quiet -routeWithSiDriven false
routeDesign -globalDetail
setAnalysisMode -analysisType onChipVariation
redirect -quiet {set honorDomain [getAnalysisMode -honorClockDomains]} > /dev/null
timeDesign -postCTS -hold -pathReports -slackReports -numPaths 50 -prefix uart_top_postCTS -outDir ../report/post_Route
getFillerMode -quiet
addFiller -cell FILL8 FILL64 FILL4 FILL32 FILL2 FILL16 FILL1 -prefix FILLER -doDRC -fitGap
addFiller -cell FILL8 FILL64 FILL4 FILL32 FILL2 FILL16 FILL1 -prefix FILLER -doDRC -fitGap
fit
setVerifyGeometryMode -area { 0 0 0 0 } -minWidth true -minSpacing true -minArea true -sameNet true -short true -overlap true -offRGrid false -offMGrid true -mergedMGridCheck true -minHole true -implantCheck true -minimumCut true -minStep true -viaEnclosure true -antenna false -insuffMetalOverlap true -pinInBlkg false -diffCellViol true -sameCellViol false -padFillerCellsOverlap true -routingBlkgPinOverlap true -routingCellBlkgOverlap true -regRoutingOnly false -stackedViasOnRegNet false -wireExt true -useNonDefaultSpacing false -maxWidth true -maxNonPrefLength -1 -error 1000 -report ../report/uart_top.geom.rpt
verifyGeometry
setVerifyGeometryMode -area { 0 0 0 0 }
verifyConnectivity -type all -report ../report/uart_top.conn.rpt -error 1000 -warning 50
saveDesign uart_top_final
streamOut ../output/uart_top -mapFile ../input/streamOut.map -libName uart_lib -units 2000 -mode ALL
encMessage warning 0
encMessage debug 0
encMessage info 0
restoreDesign /home/user19/entc21_dicd/210421E/lab3_place_and_route/work/uart_top_prePlacement.dat uart_top
setDrawView fplan
encMessage warning 1
encMessage debug 0
encMessage info 1
encMessage warning 1
encMessage debug 0
encMessage info 1
restoreDesign /home/user19/entc21_dicd/210421E/lab3_place_and_route/work/uart_top_prePlacement.dat uart_top
setDrawView fplan
encMessage warning 1
encMessage debug 0
encMessage info 1
encMessage warning 1
encMessage debug 0
encMessage info 1
restoreDesign /home/user19/entc21_dicd/210421E/lab3_place_and_route/work/uart_top_prePlacement.dat uart_top
setDrawView fplan
encMessage warning 1
encMessage debug 0
encMessage info 1
fit
selectObject Module ins_uart_transceiver_B
deselectAll
selectObject Module ins_uart_transceiver_B
gui_select -rect {-27.916 39.932 -20.352 43.879}
deselectAll
setRouteMode -earlyGlobalHonorMsvRouteConstraint false -earlyGlobalRoutePartitionPinGuide true
setEndCapMode -reset
setEndCapMode -boundary_tap false
setNanoRouteMode -quiet -droutePostRouteSpreadWire 1
setNanoRouteMode -quiet -droutePostRouteWidenWireRule LEFSpecialRouteSpec
setNanoRouteMode -quiet -timingEngine {}
setUsefulSkewMode -maxSkew false -noBoundary false -useCells {DLY4X4 DLY4X1 DLY3X4 DLY3X1 DLY2X4 DLY2X1 DLY1X4 DLY1X1 CLKBUFX8 CLKBUFX6 CLKBUFX4 CLKBUFX3 CLKBUFX20 CLKBUFX2 CLKBUFX16 CLKBUFX12 BUFX8 BUFX6 BUFX4 BUFX3 BUFX20 BUFX2 BUFX16 BUFX12 INVXL INVX8 INVX6 INVX4 INVX3 INVX20 INVX2 INVX16 INVX12 INVX1 CLKINVX8 CLKINVX6 CLKINVX4 CLKINVX3 CLKINVX20 CLKINVX2 CLKINVX16 CLKINVX12 CLKINVX1} -maxAllowedDelay 1
setPlaceMode -fp false
place_design -noPrePlaceOpt
setLayerPreference node_net -isVisible 0
setLayerPreference node_net -isVisible 1
fit
setRouteMode -earlyGlobalHonorMsvRouteConstraint false -earlyGlobalRoutePartitionPinGuide true
setEndCapMode -reset
setEndCapMode -boundary_tap false
setUsefulSkewMode -maxSkew false -noBoundary false -useCells {BUFX12 BUFX16 BUFX2 BUFX20 BUFX3 BUFX4 BUFX6 BUFX8 CLKBUFX12 CLKBUFX16 CLKBUFX2 CLKBUFX20 CLKBUFX3 CLKBUFX4 CLKBUFX6 CLKBUFX8 DLY1X1 DLY1X4 DLY2X1 DLY2X4 DLY3X1 DLY3X4 DLY4X1 DLY4X4 CLKINVX1 CLKINVX12 CLKINVX16 CLKINVX2 CLKINVX20 CLKINVX3 CLKINVX4 CLKINVX6 CLKINVX8 INVX1 INVX12 INVX16 INVX2 INVX20 INVX3 INVX4 INVX6 INVX8 INVXL} -maxAllowedDelay 1
setPlaceMode -fp false
place_design -noPrePlaceOpt
setPlaceMode -fp false
place_design -noPrePlaceOpt
setLayerPreference node_net -isVisible 0
setLayerPreference node_net -isVisible 1
setLayerPreference node_route -isVisible 0
setLayerPreference node_route -isVisible 1
setLayerPreference node_module -isVisible 0
setLayerPreference node_module -isVisible 1
setLayerPreference node_cell -isVisible 1
setLayerPreference node_cell -isVisible 0
encMessage warning 0
encMessage debug 0
encMessage info 0
restoreDesign /home/user19/entc21_dicd/210421E/lab3_place_and_route/work/uart_top_prePlacement.dat uart_top
setDrawView fplan
encMessage warning 1
encMessage debug 0
encMessage info 1
encMessage warning 0
encMessage debug 0
encMessage info 0
restoreDesign /home/user19/entc21_dicd/210421E/lab3_place_and_route/work/uart_top_prePlacement.dat uart_top
setDrawView fplan
encMessage warning 1
encMessage debug 0
encMessage info 1
setPlaceMode -fp false
place_design -noPrePlaceOpt
setPlaceMode -fp false
place_design -noPrePlaceOpt
selectObject Module ins_uart_transceiver_B
deselectAll
selectObject Module ins_uart_transceiver_B
deselectAll
selectObject Module ins_uart_transceiver_B
setLayerPreference node_track -isVisible 1
deselectAll
setLayerPreference node_inst -isVisible 0
setLayerPreference node_inst -isVisible 1
setLayerPreference node_cell -isVisible 1
setLayerPreference node_overlay -isVisible 1
fit
encMessage warning 0
encMessage debug 0
encMessage info 0
restoreDesign /home/user19/entc21_dicd/210421E/lab3_place_and_route/work/uart_top_prePlacement.dat uart_top
setDrawView fplan
encMessage warning 1
encMessage debug 0
encMessage info 1
encMessage warning 0
encMessage debug 0
encMessage info 0
restoreDesign /home/user19/entc21_dicd/210421E/lab3_place_and_route/work/uart_top_prePlacement.dat uart_top
setDrawView fplan
encMessage warning 1
encMessage debug 0
encMessage info 1
setPlaceMode -fp false
place_design
setPlaceMode -fp false
place_design -noPrePlaceOpt
setPlaceMode -fp false
place_design -noPrePlaceOpt
getCTSMode -engine -quiet
getCTSMode -engine -quiet
setPlaceMode -fp true
place_design -noPrePlaceOpt
setPlaceMode -fp false
place_design -noPrePlaceOpt -incremental
setRouteMode -earlyGlobalHonorMsvRouteConstraint false -earlyGlobalRoutePartitionPinGuide true
setEndCapMode -reset
setEndCapMode -boundary_tap false
setNanoRouteMode -quiet -droutePostRouteSpreadWire 1
setNanoRouteMode -quiet -droutePostRouteWidenWireRule LEFSpecialRouteSpec
setNanoRouteMode -quiet -timingEngine {}
setUsefulSkewMode -maxSkew false -noBoundary false -useCells {DLY4X4 DLY4X1 DLY3X4 DLY3X1 DLY2X4 DLY2X1 DLY1X4 DLY1X1 CLKBUFX8 CLKBUFX6 CLKBUFX4 CLKBUFX3 CLKBUFX20 CLKBUFX2 CLKBUFX16 CLKBUFX12 BUFX8 BUFX6 BUFX4 BUFX3 BUFX20 BUFX2 BUFX16 BUFX12 INVXL INVX8 INVX6 INVX4 INVX3 INVX20 INVX2 INVX16 INVX12 INVX1 CLKINVX8 CLKINVX6 CLKINVX4 CLKINVX3 CLKINVX20 CLKINVX2 CLKINVX16 CLKINVX12 CLKINVX1} -maxAllowedDelay 1
setPlaceMode -fp false
place_design
encMessage warning 0
encMessage debug 0
encMessage info 0
restoreDesign /home/user19/entc21_dicd/210421E/lab3_place_and_route/work/uart_top_preCTS.dat uart_top
setDrawView fplan
encMessage warning 1
encMessage debug 0
encMessage info 1
encMessage warning 0
encMessage debug 0
encMessage info 0
restoreDesign /home/user19/entc21_dicd/210421E/lab3_place_and_route/work/uart_top_preCTS.dat uart_top
setDrawView fplan
encMessage warning 1
encMessage debug 0
encMessage info 1
