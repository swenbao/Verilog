module Lab5();

input [7:0] in;
output reg [2:0] out;
output reg valid;

always@(in)
begin
    case(in)
    begin
        8'b00000001: {valid, out} = 4'b1000;
        8'b00000010: {valid, out} = 4'b1001;
        8'b00000100: {valid, out} = 4'b1010;
        8'b00001000: {valid, out} = 4'b1011;
        8'b00010000: {valid, out} = 4'b1100;
        8'b00100000: {valid, out} = 4'b1101;
        8'b01000000: {valid, out} = 4'b1110;
        8'b10000000: {valid, out} = 4'b1111;
        default: {valid, out} = 4'b0000;
    end
    endcase
end


endmodule