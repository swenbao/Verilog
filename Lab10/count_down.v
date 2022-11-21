module count_down(clock_div, reset, state, count);
input clock_div, reset;
output reg [1:0] state;
output reg [3:0] count;

always@(posedge clock_div or negedge reset)
begin
    if(reset == 0)
	 begin
        count = 4'b1111;
        state = 0;
	 end
    else
    begin
        count = count - 1;
        if(count == 0)
        begin
            case(state)
                2'b00: state = state + 1;
                2'b01: state = state + 1;
                default: state = 0;
            endcase
				case(state)
                2'b00: count = 4'b1111;
                2'b01: count = 4'b0101;
                default: count = 4'b1010;
            endcase
        end
    end
end

endmodule
