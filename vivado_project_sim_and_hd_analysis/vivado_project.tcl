# Created : 15:49:7, Mon Jun 6, 2016 : Sanjay Rai

source ../device_type.tcl

source ../src/scripts/hd_floorplan_utils.tcl

create_project project_X project_X -part [DEVICE_TYPE]


add_files -norecurse {
../IP/sine_wave_gen/sine_wave_gen.xci
../IP/ila_16Wx8192D/ila_16Wx8192D.xci
../src/PR_modules/PR_module_sine_wave/src/sine_wave.v
../src/PR_modules/PR_module_sine_wave/src/PR_module_A.v
../src/TOP_static/src/kcu105_pr_ex_static_top.v
}

add_files -fileset sim_1 -norecurse ../src/TOP_static/src/tb_kcu105_pr_ex_static_top.v

add_files -fileset constrs_1 {
../src/xdc/kcu105_pr_ex_static_top.xdc
}
update_compile_order -fileset sources_1
update_compile_order -fileset sim_1

proc build_all {} {
launch_runs synth_1
wait_on_run synth_1
open_run synth_1
launch_runs impl_1 -to_step write_bitstream
wait_on_run impl_1
open_run impl_1
}
proc hd_fp {} {
hd_floorplan [get_cells U_PR_module_A]
}
