module linear_ramp (
input clk,
output [15:0] sig_data

);

reg [15:0] phase_count = 16'd0;
reg [15:0] i_sig_data = 16'd0;
wire [15:0] m_axis_data_tdata;
wire m_axis_data_tvalid;

always @(posedge clk)
begin
    phase_count <= phase_count + 1;
end

always @(posedge clk)
begin
   i_sig_data <= phase_count; 
end

assign sig_data = i_sig_data; 

endmodule
