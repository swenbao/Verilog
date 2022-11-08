module Lab7(clock, reset, Up_Down, a, b, c, d, e, f, g);

input clock, reset, Up_Down;
output a, b, c, d, e, f, g;
wire [3:0] num;
wire clock_div;

clk_div(clock, reset, clock_div);
up_down_counter(clock_div, reset, Up_Down, num);
sevenDisplay(num, a, b, c, d, e, f, g);

endmodule
