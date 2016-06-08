# Created : 15:49:7, Mon Jun 6, 2016 : Sanjay Rai

source ../device_type.tcl
create_project project_X project_X -part [DEVICE_TYPE] 

add_files -fileset sources_1 -norecurse {
    ../IP/clk_wiz_mmcm_50M/clk_wiz_mmcm_50M.xci
    ../IP/sine_wave_gen/sine_wave_gen.xci
    ../IP/ila_16Wx8192D/ila_16Wx8192D.xci
}

