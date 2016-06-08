module PR_module_A (
    input clk,
    output [15:0] data_out
);

linear_ramp u_linear_ramp(
    .clk(clk),
    .sig_data(data_out));

endmodule
