module state(num, state);

input [3:0] num;
output reg state;

always@(num) 
begin
    if(num == 4'b0000)
        state = state + 1;
    else;

    if(state == 3)
        state = 0;
    else;
end

endmodule