module dot_diaplay(div_clk, reset, keypadBuf, dot_row, dot_col);

input div_clk, reset;
input [3:0] keypadBuf;
output reg [7:0] dot_row, dot_col;
reg [2:0] row_count;

always @(posedge div_clk or negedge reset) 
begin
    if(~reset) 
    begin
        dot_row <= 8'b0;
        dot_col <= 8'b0;
        row_count <= 0;
    end
    else
    begin
        case(keypadBuf)
        4'h0 : 
        begin
            row_count <= row_count + 1;
            case(row_count)
                3'd0: dot_row <= 8'b01111111;
                3'd1: dot_row <= 8'b10111111;
                3'd2: dot_row <= 8'b11011111;
                3'd3: dot_row <= 8'b11101111;
                3'd4: dot_row <= 8'b11110111;
                3'd5: dot_row <= 8'b11111011;
                3'd6: dot_row <= 8'b11111101;
                3'd7: dot_row <= 8'b11111110;
            endcase
            case(row_count)
                3'd0: dot_col <= 8'b00000000;
                3'd1: dot_col <= 8'b00000000;
                3'd2: dot_col <= 8'b00000000;
                3'd3: dot_col <= 8'b00000000;
                3'd4: dot_col <= 8'b00000000;
                3'd5: dot_col <= 8'b00000000;
                3'd6: dot_col <= 8'b11000000;
                3'd7: dot_col <= 8'b11000000;
            endcase
        end

        4'h1 : 
        begin
            row_count <= row_count + 1;
            case(row_count)
                3'd0: dot_row <= 8'b01111111;
                3'd1: dot_row <= 8'b10111111;
                3'd2: dot_row <= 8'b11011111;
                3'd3: dot_row <= 8'b11101111;
                3'd4: dot_row <= 8'b11110111;
                3'd5: dot_row <= 8'b11111011;
                3'd6: dot_row <= 8'b11111101;
                3'd7: dot_row <= 8'b11111110;
            endcase
            case(row_count)
                3'd0: dot_col <= 8'b00000000;
                3'd1: dot_col <= 8'b00000000;
                3'd2: dot_col <= 8'b00000000;
                3'd3: dot_col <= 8'b00000000;
                3'd4: dot_col <= 8'b00000000;
                3'd5: dot_col <= 8'b00000000;
                3'd6: dot_col <= 8'b00110000;
                3'd7: dot_col <= 8'b00110000;
            endcase
        end

        4'h4 : 
        begin
            row_count <= row_count + 1;
            case(row_count)
                3'd0: dot_row <= 8'b01111111;
                3'd1: dot_row <= 8'b10111111;
                3'd2: dot_row <= 8'b11011111;
                3'd3: dot_row <= 8'b11101111;
                3'd4: dot_row <= 8'b11110111;
                3'd5: dot_row <= 8'b11111011;
                3'd6: dot_row <= 8'b11111101;
                3'd7: dot_row <= 8'b11111110;
            endcase
            case(row_count)
                3'd0: dot_col <= 8'b00000000;
                3'd1: dot_col <= 8'b00000000;
                3'd2: dot_col <= 8'b00000000;
                3'd3: dot_col <= 8'b00000000;
                3'd4: dot_col <= 8'b00000000;
                3'd5: dot_col <= 8'b00000000;
                3'd6: dot_col <= 8'b00001100;
                3'd7: dot_col <= 8'b00001100;
            endcase
        end
        
        4'h7 : 
        begin
            row_count <= row_count + 1;
            case(row_count)
                3'd0: dot_row <= 8'b01111111;
                3'd1: dot_row <= 8'b10111111;
                3'd2: dot_row <= 8'b11011111;
                3'd3: dot_row <= 8'b11101111;
                3'd4: dot_row <= 8'b11110111;
                3'd5: dot_row <= 8'b11111011;
                3'd6: dot_row <= 8'b11111101;
                3'd7: dot_row <= 8'b11111110;
            endcase
            case(row_count)
                3'd0: dot_col <= 8'b00000000;
                3'd1: dot_col <= 8'b00000000;
                3'd2: dot_col <= 8'b00000000;
                3'd3: dot_col <= 8'b00000000;
                3'd4: dot_col <= 8'b00000000;
                3'd5: dot_col <= 8'b00000000;
                3'd6: dot_col <= 8'b00000011;
                3'd7: dot_col <= 8'b00000011;
            endcase
        end

        4'ha : 
        begin
            row_count <= row_count + 1;
            case(row_count)
                3'd0: dot_row <= 8'b01111111;
                3'd1: dot_row <= 8'b10111111;
                3'd2: dot_row <= 8'b11011111;
                3'd3: dot_row <= 8'b11101111;
                3'd4: dot_row <= 8'b11110111;
                3'd5: dot_row <= 8'b11111011;
                3'd6: dot_row <= 8'b11111101;
                3'd7: dot_row <= 8'b11111110;
            endcase
            case(row_count)
                3'd0: dot_col <= 8'b00000000;
                3'd1: dot_col <= 8'b00000000;
                3'd2: dot_col <= 8'b00000000;
                3'd3: dot_col <= 8'b00000000;
                3'd4: dot_col <= 8'b11000000;
                3'd5: dot_col <= 8'b11000000;
                3'd6: dot_col <= 8'b00000000;
                3'd7: dot_col <= 8'b00000000;
            endcase
        end

        4'h2 : 
        begin
            row_count <= row_count + 1;
            case(row_count)
                3'd0: dot_row <= 8'b01111111;
                3'd1: dot_row <= 8'b10111111;
                3'd2: dot_row <= 8'b11011111;
                3'd3: dot_row <= 8'b11101111;
                3'd4: dot_row <= 8'b11110111;
                3'd5: dot_row <= 8'b11111011;
                3'd6: dot_row <= 8'b11111101;
                3'd7: dot_row <= 8'b11111110;
            endcase
            case(row_count)
                3'd0: dot_col <= 8'b00000000;
                3'd1: dot_col <= 8'b00000000;
                3'd2: dot_col <= 8'b00000000;
                3'd3: dot_col <= 8'b00000000;
                3'd4: dot_col <= 8'b00110000;
                3'd5: dot_col <= 8'b00110000;
                3'd6: dot_col <= 8'b00000000;
                3'd7: dot_col <= 8'b00000000;
            endcase
        end

        4'h5 : 
        begin
            row_count <= row_count + 1;
            case(row_count)
                3'd0: dot_row <= 8'b01111111;
                3'd1: dot_row <= 8'b10111111;
                3'd2: dot_row <= 8'b11011111;
                3'd3: dot_row <= 8'b11101111;
                3'd4: dot_row <= 8'b11110111;
                3'd5: dot_row <= 8'b11111011;
                3'd6: dot_row <= 8'b11111101;
                3'd7: dot_row <= 8'b11111110;
            endcase
            case(row_count)
                3'd0: dot_col <= 8'b00000000;
                3'd1: dot_col <= 8'b00000000;
                3'd2: dot_col <= 8'b00000000;
                3'd3: dot_col <= 8'b00000000;
                3'd4: dot_col <= 8'b00001100;
                3'd5: dot_col <= 8'b00001100;
                3'd6: dot_col <= 8'b00000000;
                3'd7: dot_col <= 8'b00000000;
            endcase
        end

        4'h8 : 
        begin
            row_count <= row_count + 1;
            case(row_count)
                3'd0: dot_row <= 8'b01111111;
                3'd1: dot_row <= 8'b10111111;
                3'd2: dot_row <= 8'b11011111;
                3'd3: dot_row <= 8'b11101111;
                3'd4: dot_row <= 8'b11110111;
                3'd5: dot_row <= 8'b11111011;
                3'd6: dot_row <= 8'b11111101;
                3'd7: dot_row <= 8'b11111110;
            endcase
            case(row_count)
                3'd0: dot_col <= 8'b00000000;
                3'd1: dot_col <= 8'b00000000;
                3'd2: dot_col <= 8'b00000000;
                3'd3: dot_col <= 8'b00000000;
                3'd4: dot_col <= 8'b00000011;
                3'd5: dot_col <= 8'b00000011;
                3'd6: dot_col <= 8'b00000000;
                3'd7: dot_col <= 8'b00000000;
            endcase
        end

        4'hb : 
        begin
            row_count <= row_count + 1;
            case(row_count)
                3'd0: dot_row <= 8'b01111111;
                3'd1: dot_row <= 8'b10111111;
                3'd2: dot_row <= 8'b11011111;
                3'd3: dot_row <= 8'b11101111;
                3'd4: dot_row <= 8'b11110111;
                3'd5: dot_row <= 8'b11111011;
                3'd6: dot_row <= 8'b11111101;
                3'd7: dot_row <= 8'b11111110;
            endcase
            case(row_count)
                3'd0: dot_col <= 8'b00000000;
                3'd1: dot_col <= 8'b00000000;
                3'd2: dot_col <= 8'b11000000;
                3'd3: dot_col <= 8'b11000000;
                3'd4: dot_col <= 8'b00000000;
                3'd5: dot_col <= 8'b00000000;
                3'd6: dot_col <= 8'b00000000;
                3'd7: dot_col <= 8'b00000000;
            endcase
        end

        4'h3 : 
        begin
            row_count <= row_count + 1;
            case(row_count)
                3'd0: dot_row <= 8'b01111111;
                3'd1: dot_row <= 8'b10111111;
                3'd2: dot_row <= 8'b11011111;
                3'd3: dot_row <= 8'b11101111;
                3'd4: dot_row <= 8'b11110111;
                3'd5: dot_row <= 8'b11111011;
                3'd6: dot_row <= 8'b11111101;
                3'd7: dot_row <= 8'b11111110;
            endcase
            case(row_count)
                3'd0: dot_col <= 8'b00000000;
                3'd1: dot_col <= 8'b00000000;
                3'd2: dot_col <= 8'b00110000;
                3'd3: dot_col <= 8'b00110000;
                3'd4: dot_col <= 8'b00000000;
                3'd5: dot_col <= 8'b00000000;
                3'd6: dot_col <= 8'b00000000;
                3'd7: dot_col <= 8'b00000000;
            endcase
        end

        4'h6 : 
        begin
            row_count <= row_count + 1;
            case(row_count)
                3'd0: dot_row <= 8'b01111111;
                3'd1: dot_row <= 8'b10111111;
                3'd2: dot_row <= 8'b11011111;
                3'd3: dot_row <= 8'b11101111;
                3'd4: dot_row <= 8'b11110111;
                3'd5: dot_row <= 8'b11111011;
                3'd6: dot_row <= 8'b11111101;
                3'd7: dot_row <= 8'b11111110;
            endcase
            case(row_count)
                3'd0: dot_col <= 8'b00000000;
                3'd1: dot_col <= 8'b00000000;
                3'd2: dot_col <= 8'b00001100;
                3'd3: dot_col <= 8'b00001100;
                3'd4: dot_col <= 8'b00000000;
                3'd5: dot_col <= 8'b00000000;
                3'd6: dot_col <= 8'b00000000;
                3'd7: dot_col <= 8'b00000000;
            endcase
        end

        4'h9 : 
        begin
            row_count <= row_count + 1;
            case(row_count)
                3'd0: dot_row <= 8'b01111111;
                3'd1: dot_row <= 8'b10111111;
                3'd2: dot_row <= 8'b11011111;
                3'd3: dot_row <= 8'b11101111;
                3'd4: dot_row <= 8'b11110111;
                3'd5: dot_row <= 8'b11111011;
                3'd6: dot_row <= 8'b11111101;
                3'd7: dot_row <= 8'b11111110;
            endcase
            case(row_count)
                3'd0: dot_col <= 8'b00000000;
                3'd1: dot_col <= 8'b00000000;
                3'd2: dot_col <= 8'b00000011;
                3'd3: dot_col <= 8'b00000011;
                3'd4: dot_col <= 8'b00000000;
                3'd5: dot_col <= 8'b00000000;
                3'd6: dot_col <= 8'b00000000;
                3'd7: dot_col <= 8'b00000000;
            endcase
        end

        4'hf : 
        begin
            row_count <= row_count + 1;
            case(row_count)
                3'd0: dot_row <= 8'b01111111;
                3'd1: dot_row <= 8'b10111111;
                3'd2: dot_row <= 8'b11011111;
                3'd3: dot_row <= 8'b11101111;
                3'd4: dot_row <= 8'b11110111;
                3'd5: dot_row <= 8'b11111011;
                3'd6: dot_row <= 8'b11111101;
                3'd7: dot_row <= 8'b11111110;
            endcase
            case(row_count)
                3'd0: dot_col <= 8'b11000000;
                3'd1: dot_col <= 8'b11000000;
                3'd2: dot_col <= 8'b00000000;
                3'd3: dot_col <= 8'b00000000;
                3'd4: dot_col <= 8'b00000000;
                3'd5: dot_col <= 8'b00000000;
                3'd6: dot_col <= 8'b00000000;
                3'd7: dot_col <= 8'b00000000;
            endcase
        end

        4'he : 
        begin
            row_count <= row_count + 1;
            case(row_count)
                3'd0: dot_row <= 8'b01111111;
                3'd1: dot_row <= 8'b10111111;
                3'd2: dot_row <= 8'b11011111;
                3'd3: dot_row <= 8'b11101111;
                3'd4: dot_row <= 8'b11110111;
                3'd5: dot_row <= 8'b11111011;
                3'd6: dot_row <= 8'b11111101;
                3'd7: dot_row <= 8'b11111110;
            endcase
            case(row_count)
                3'd0: dot_col <= 8'b00110000;
                3'd1: dot_col <= 8'b00110000;
                3'd2: dot_col <= 8'b00000000;
                3'd3: dot_col <= 8'b00000000;
                3'd4: dot_col <= 8'b00000000;
                3'd5: dot_col <= 8'b00000000;
                3'd6: dot_col <= 8'b00000000;
                3'd7: dot_col <= 8'b00000000;
            endcase
        end

        4'hd : 
        begin
            row_count <= row_count + 1;
            case(row_count)
                3'd0: dot_row <= 8'b01111111;
                3'd1: dot_row <= 8'b10111111;
                3'd2: dot_row <= 8'b11011111;
                3'd3: dot_row <= 8'b11101111;
                3'd4: dot_row <= 8'b11110111;
                3'd5: dot_row <= 8'b11111011;
                3'd6: dot_row <= 8'b11111101;
                3'd7: dot_row <= 8'b11111110;
            endcase
            case(row_count)
                3'd0: dot_col <= 8'b00001100;
                3'd1: dot_col <= 8'b00001100;
                3'd2: dot_col <= 8'b00000000;
                3'd3: dot_col <= 8'b00000000;
                3'd4: dot_col <= 8'b00000000;
                3'd5: dot_col <= 8'b00000000;
                3'd6: dot_col <= 8'b00000000;
                3'd7: dot_col <= 8'b00000000;
            endcase
        end

        4'hc : 
        begin
            row_count <= row_count + 1;
            case(row_count)
                3'd0: dot_row <= 8'b01111111;
                3'd1: dot_row <= 8'b10111111;
                3'd2: dot_row <= 8'b11011111;
                3'd3: dot_row <= 8'b11101111;
                3'd4: dot_row <= 8'b11110111;
                3'd5: dot_row <= 8'b11111011;
                3'd6: dot_row <= 8'b11111101;
                3'd7: dot_row <= 8'b11111110;
            endcase
            case(row_count)
                3'd0: dot_col <= 8'b00000011;
                3'd1: dot_col <= 8'b00000011;
                3'd2: dot_col <= 8'b00000000;
                3'd3: dot_col <= 8'b00000000;
                3'd4: dot_col <= 8'b00000000;
                3'd5: dot_col <= 8'b00000000;
                3'd6: dot_col <= 8'b00000000;
                3'd7: dot_col <= 8'b00000000;
            endcase
        end

        endcase
    end
end

endmodule
