module Lab10(clock, reset, dot_row, dot_col, a, b, c, d, e, f, g);

input clock, reset;
output [7:0] dot_row, dot_col; // dot display
output a, b, c, d, e, f, g; // 7 display
wire clk7, clk_dot;
wire [1:0] state;
wire [3:0] count;

clk_div_7(clock, reset, clk7);
clk_div_dot(clock, reset, clk_dot);
count_down(clk7, reset, state, count);
sevenDisplay(count, a, b, c, d, e, f, g);
dot_diaplay(state, clk_dot, reset, dot_row, dot_col);

endmodule
