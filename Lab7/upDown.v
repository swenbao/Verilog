module up_down_counter(clock_div, reset, Up_Down, count, temp);
input clock_div, reset, Up_Down;
output reg [0:3] count ;
reg [0:3] temp;

always@(clock_div or reset or Up_Down)
begin
	if(reset) // reset == 1
	begin
		if(Up_Down) // Up_Down == 1
		begin
			count <= count+1;
		end
		else // Up_Down == 0
		begin
			count <= count-1;
		end
	end
	else // reset == 0
	begin
		//temp <= count;
		count <= 4'b0000;
	end
end
endmodule