module Lab11()

    input clock, reset;
    input [3:0] keypadCol;
    output reg [7:0] dot_row, dot_col;    

    wire div_clk_100, div_clk_10000;
    wire [3:0] in;

    clk_div_100(clock, reset, div_clk_100);
    clk_div_10000(clock, reset, div_clk_10000);
    checkkeypad(div_clk_100, reset, keypadCol, in);
    dot_diaplay(div_clk_10000, reset, in, dot_row, dot_col);
    
endmodule
