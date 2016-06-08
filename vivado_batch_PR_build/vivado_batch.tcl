# Created : 16:59:35, Fri May 20, 2016 : Sanjay Rai

proc create_PR_config_X {} {
open_checkpoint ../src/TOP_static/build/kcu105_pr_ex_static_top_static_synth.dcp
read_checkpoint -cell U_PR_module_A ../src/PR_modules/PR_module_sine_wave/build/PR_module_A.post_synth_opt.dcp
opt_design
place_design
phys_opt_design
route_design
write_checkpoint -force PR_config_X_full_design_routed.dcp
write_bitstream config_X
write_debug_probes ./full_design_PR_X.ltx
write_checkpoint -force -cell U_PR_module_A ../src/PR_modules/PR_module_sine_wave/build/PR_modules_routed.dcp
update_design -cell U_PR_module_A -black_box
lock_design -level routing
write_checkpoint -force ../src/TOP_static/build/kcu105_pr_ex_top_static_only_routed.dcp
write_bitstream black_box_static
close_design
}

proc create_PR_config_Y {} {
open_checkpoint ../src/TOP_static/build/kcu105_pr_ex_top_static_only_routed.dcp
read_checkpoint -cell U_PR_module_A ../src/PR_modules/PR_module_linear_ramp/build/PR_module_A.post_synth_opt.dcp
opt_design
place_design
phys_opt_design
route_design
write_checkpoint -force PR_config_Y_full_design_routed.dcp
write_bitstream config_Y
write_checkpoint -force -cell U_PR_module_A ../src/PR_modules/PR_module_linear_ramp/build/PR_modules_routed.dcp
close_design
}


create_PR_config_X
create_PR_config_Y
