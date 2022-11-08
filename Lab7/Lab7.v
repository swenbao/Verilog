module Lab7(clock, reset, Up_Down, out);

input clock, reset, Up_Down;
output [0:6] out;
wire [0:3] num;
wire clock_div;

clk_div(clock, reset, clock_div);
up_down_counter(clock_div, reset, Up_Down, num);
seven_display(num, out);

endmodule