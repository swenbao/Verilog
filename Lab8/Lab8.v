module Lab8(clk, reset, in, a, b, c, d, e, f, g);

input clk, reset, in;
wire clock_div, tmp;
output  a, b, c, d, e, f, g;

clk_div(clk, reset, clock_div);
Moore(clock_div, reset, in , tmp);
sevenDisplay(tmp, a, b, c, d, e, f, g);

endmodule
