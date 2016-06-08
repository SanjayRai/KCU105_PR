# Created : 15:49:7, Mon Jun 6, 2016 : Sanjay Rai

source ../../../../device_type.tcl


set TOP_module PR_module_A 

create_project -in_memory -part [DEVICE_TYPE] 

read_verilog {
../src/linear_ramp.v
../src/PR_module_A.v
}

read_xdc {
../../../U_PR_module_A_ooc_budget.xdc
../../../U_PR_module_A_ooc_optimize.xdc
../../../U_PR_module_A_ooc_timing.xdc
../../../U_PR_module_A_phys.xdc
}

if (1) {
synth_design -top $TOP_module -part [DEVICE_TYPE] -mode out_of_context 
opt_design -verbose -directive Explore
write_checkpoint -force $TOP_module.post_synth_opt.dcp
# place_design -verbose -directive Explore
# write_checkpoint -force $TOP_module.post_place.dcp
# phys_opt_design  -verbose -directive Explore
# write_checkpoint -force $TOP_module.post_place_phys_opt.dcp
# route_design  -verbose -directive Explore
# write_checkpoint -force $TOP_module.post_route.dcp
# phys_opt_design  -verbose -directive Explore
# write_checkpoint -force $TOP_module.post_route_phys_opt.dcp
# report_timing_summary -file $TOP_module.timing_summary.rpt
# report_drc -file $TOP_module.drc.rpt
# set_property config_mode SPIx4 [current_design]
# set_property config_mode B_SCAN [current_design]
# set_property config_mode SPIx4 [current_design]
# set_property BITSTREAM.CONFIG.SPI_BUSWIDTH 4 [current_design]
# write_bitstream $TOP_module.bit      
}
