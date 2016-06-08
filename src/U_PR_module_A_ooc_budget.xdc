create_clock -period 3.333 -name clk_in_48Mhz.clk [get_ports {clk}] -waveform { 0.000000 1.666500  }
set_property HD.CLK_SRC BUFGCE_X0Y24 [get_ports {clk}] 
set_max_delay -from [get_pins {u_sine_wave/i_sig_data_reg[0]/C}]  -to [get_ports {data_out[0]}] -datapath_only 1.6665
set_max_delay -from [get_pins {u_sine_wave/i_sig_data_reg[10]/C}]  -to [get_ports {data_out[10]}] -datapath_only 1.6665
set_max_delay -from [get_pins {u_sine_wave/i_sig_data_reg[11]/C}]  -to [get_ports {data_out[11]}] -datapath_only 1.6665
set_max_delay -from [get_pins {u_sine_wave/i_sig_data_reg[12]/C}]  -to [get_ports {data_out[12]}] -datapath_only 1.6665
set_max_delay -from [get_pins {u_sine_wave/i_sig_data_reg[13]/C}]  -to [get_ports {data_out[13]}] -datapath_only 1.6665
set_max_delay -from [get_pins {u_sine_wave/i_sig_data_reg[14]/C}]  -to [get_ports {data_out[14]}] -datapath_only 1.6665
set_max_delay -from [get_pins {u_sine_wave/i_sig_data_reg[15]/C}]  -to [get_ports {data_out[15]}] -datapath_only 1.6665
set_max_delay -from [get_pins {u_sine_wave/i_sig_data_reg[1]/C}]  -to [get_ports {data_out[1]}] -datapath_only 1.6665
set_max_delay -from [get_pins {u_sine_wave/i_sig_data_reg[2]/C}]  -to [get_ports {data_out[2]}] -datapath_only 1.6665
set_max_delay -from [get_pins {u_sine_wave/i_sig_data_reg[3]/C}]  -to [get_ports {data_out[3]}] -datapath_only 1.6665
set_max_delay -from [get_pins {u_sine_wave/i_sig_data_reg[4]/C}]  -to [get_ports {data_out[4]}] -datapath_only 1.6665
set_max_delay -from [get_pins {u_sine_wave/i_sig_data_reg[5]/C}]  -to [get_ports {data_out[5]}] -datapath_only 1.6665
set_max_delay -from [get_pins {u_sine_wave/i_sig_data_reg[6]/C}]  -to [get_ports {data_out[6]}] -datapath_only 1.6665
set_max_delay -from [get_pins {u_sine_wave/i_sig_data_reg[7]/C}]  -to [get_ports {data_out[7]}] -datapath_only 1.6665
set_max_delay -from [get_pins {u_sine_wave/i_sig_data_reg[8]/C}]  -to [get_ports {data_out[8]}] -datapath_only 1.6665
set_max_delay -from [get_pins {u_sine_wave/i_sig_data_reg[9]/C}]  -to [get_ports {data_out[9]}] -datapath_only 1.6665
