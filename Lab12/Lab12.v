module Lab12 (clock, R, G, B, reset, VGA_red, VGA_green, VGA_blue, H_sync, V_sync);

input clock, R, G, B, reset;
output [3:0] VGA_red, VGA_green, VGA_blue;
output H_sync, V_sync;

wire clk_25M;
wire enable_V_counter;
wire [15:0] H_count_value;
wire [15:0] V_count_value;

clk_div_25M(clk, reset, clk_25M);
horizontal(clk_25M, enable_V_counter, H_count_value);
vertical(clk_25M, enable_V_counter, V_count_value);

/*
// outputs
assign H_sync = (H_count_value < 96) ? 1'b1 : 1'b0;
assign V_sync = (V_count_value < 2) ? 1'b1 : 1'b0;
// colors
assign VGA_red = (H_count_value < 784 && H_count_value > 143 && V_count_value < 515 && V_count_value > 34) ? 4'hF : 4'h0;
assign VGA_green = (H_count_value < 784 && H_count_value > 143 && V_count_value < 515 && V_count_value > 34) ? 4'hF : 4'h0;
assign VGA_blue = (H_count_value < 784 && H_count_value > 143 && V_count_value < 515 && V_count_value > 34) ? 4'hF : 4'h0;
*/

endmodule
