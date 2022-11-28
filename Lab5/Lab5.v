module Lab5()

input [3:0] a, b;
input select;
output reg [3:0] out;
output overflow;

always@(a, b, select)
begin
    if(select == 1)
        {overflow, out} = a+b;
    else // if select == 0
        {overflow, out} = a-b;
end

endmodule