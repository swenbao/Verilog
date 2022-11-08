module up_down_counter(clock_div, reset, Up_Down, count, temp);
input clock_div, reset, Up_Down;
output reg [3:0] count;

always@(clock_div or reset or Up_Down)
begin
	if(reset) // reset == 1
	begin
		if(Up_Down) // Up_Down == 1
			count <= count+1;
		else // Up_Down == 0
			count <= count-1;
	end
	else // reset == 0
	begin
		count <= 4'b0000;
	end
end
endmodule