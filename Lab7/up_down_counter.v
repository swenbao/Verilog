module up_down_counter(clock_div, reset, Up_Down, count);
input clock_div, reset, Up_Down;
output reg [3:0] count;
reg [3:0] tmp;

always@(posedge clock_div or negedge reset)
begin
	if(!reset) // reset == 0
		count = 4'b0000;
	else // reset == 1
	begin
		if(Up_Down) // Up_Down == 1
			count = count+1;
		else // Up_Down == 0
			count = count-1;
	end
end
endmodule
