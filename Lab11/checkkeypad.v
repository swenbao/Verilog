`define TimeExpire 32'd250000
module checkkeypad(clk, reset, keypadRow, keypadCol)

    input clk, reset;
    input [3:0] keypadCol;
    output reg [3:0] keypadRow;

    reg [3:0] keypadBuf;
    reg [31:0] keypadDelay;

    always@(posedge clk)
    begin
        if(!reset)
        begin
            keypadRow <= 4'b1110;
            keypadBuf <= 4'b0000;
            keypadDelay <= 31'd0;
        end 
        else
        begin
            if(keypadDelay == `TimeExpire)
            begin
                keypadDelay = 31'd0;
                case({keypadRow, keypadCol})  //keypad 上的編號
                    8'b1110_1110 : keypadBuf <= 4'h7; // 0111
                    8'b1110_1101 : keypadBuf <= 4'h4; // 0100
                    8'b1110_1011 : keypadBuf <= 4'h1; // 0001
                    8'b1110_0111 : keypadBuf <= 4'h0; // 0000

                    8'b1101_1110 : keypadBuf <= 4'h8; // 1000
                    8'b1101_1101 : keypadBuf <= 4'h5; // 0101
                    8'b1101_1011 : keypadBuf <= 4'h2; // 0010
                    8'b1101_0111 : keypadBuf <= 4'ha; // 0110

                    8'b1011_1110 : keypadBuf <= 4'h9; // 1001
                    8'b1011_1101 : keypadBuf <= 4'h6; // 0110
                    8'b1011_1011 : keypadBuf <= 4'h3; // 0011
                    8'b1011_0111 : keypadBuf <= 4'hb; // 1011

                    8'b0111_1110 : keypadBuf <= 4'hc; // 1100
                    8'b0111_1101 : keypadBuf <= 4'hd; // 1101
                    8'b0111_1011 : keypadBuf <= 4'he; // 1110
                    8'b0111_0111 : keypadBuf <= 4'hf; // 1111
                    
                    default : keypadBuf <= keypadBuf;
                endcase
                case(keypadRow) // switch to next row with every posedge of clk
                    4'b1110 : keypadRow <= 4'1101;
                    4'b1101 : keypadRow <= 4'1011;
                    4'b1011 : keypadRow <= 4'0111;
                    4'b0111 : keypadRow <= 4'1110;
                    default : keypadRow <= 4'1110;
                endcase
            end
            else
                keypadDelay <= keypadDelay + 1'b1;
        end
    end
endmodule