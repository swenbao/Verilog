module Lab11()

    input clock, reset;
    input [3:0] keypadCol;
    output [3:0] keypadRow;
    output reg [7:0] dot_row, dot_col;    

    wire div_clk;

    clk_div(clock, reset, div_clk);
    checkkeypad(div_clk, reset, keypadCol, keypadRow);
    
endmodule
