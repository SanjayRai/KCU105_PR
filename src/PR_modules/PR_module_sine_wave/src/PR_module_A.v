module PR_module_A (
    input clk,
    output [15:0] data_out
);

sine_wave u_sine_wave(
    .clk(clk),
    .sig_data(data_out));

endmodule
