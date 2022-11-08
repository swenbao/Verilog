module sevenDisplay(in, a, b, c, d, e, f, g);

input [3:0] in;
output reg a, b, c, d, e, f, g;

always@(in)
begin
    case(in) 
        				            //abcdefg
		4'b0000: {a,b,c,d,e,f,g} = 7'b0000001; //0
		4'b0001: {a,b,c,d,e,f,g} = 7'b1001111; //1
		4'b0010: {a,b,c,d,e,f,g} = 7'b0010010; //2
		4'b0011: {a,b,c,d,e,f,g} = 7'b0000110; //3
		4'b0100: {a,b,c,d,e,f,g} = 7'b1001100; //4
		4'b0101: {a,b,c,d,e,f,g} = 7'b0100100; //5
		4'b0110: {a,b,c,d,e,f,g} = 7'b0100000; //6
		4'b0111: {a,b,c,d,e,f,g} = 7'b0001111; //7
		4'b1000: {a,b,c,d,e,f,g} = 7'b0000000; //8
		4'b1001: {a,b,c,d,e,f,g} = 7'b0000100; //9
		4'b1010: {a,b,c,d,e,f,g} = 7'b0001000; //10
		4'b1011: {a,b,c,d,e,f,g} = 7'b1100000; //11
		4'b1100: {a,b,c,d,e,f,g} = 7'b0110001; //12
		4'b1101: {a,b,c,d,e,f,g} = 7'b1000010; //13
		4'b1110: {a,b,c,d,e,f,g} = 7'b0110000; //14
		4'b1111: {a,b,c,d,e,f,g} = 7'b0111000; //15
    endcase
end
endmodule