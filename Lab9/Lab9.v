module Lab9(clock, reset, dot_row, dot_col);

input clock, reset;
output [7:0] dot_row, dot_col;
wire div_clk;

clk_div(clock, reset, div_clk);
dot_diaplay(div_clk, reset, dot_row, dot_col);

endmodule