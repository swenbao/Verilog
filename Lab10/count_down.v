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
        if(state == 0)
        begin
            case(count)
                4'b0000: // 0 
                begin
                    state = state + 1;
                    count = 4'b0101;
                end
                default: count = count - 1; // 15~1
            endcase
        end
        else if(state == 1)
        begin
            case(count)
                4'b0000: // 0 
                begin
                    state = state + 1;
                    count = 4'b1010;
                end
                default: count = count - 1; // 5~1
            endcase
        end
        else // state == 2
        begin
				case(count)
					4'b0000: // 0 
					begin
						 state = 0;
						 count = 4'b1111;
					end
					default: count = count - 1; // 10~1
				endcase
        end
    end
end

endmodule
