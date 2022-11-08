module Lab7(clock, reset, Up_Down, out);

input clock, reset, Up_Down;
output [6:0] out;
wire [3:0] num;
wire clock_div;

clk_div(clock, reset, clock_div);
up_down_counter(clock_div, reset, Up_Down, num);
seven_display(num, out);

endmodule