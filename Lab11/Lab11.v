module Lab11(clock, reset, keypadCol, keypadRow, dot_row, dot_col);

    input clock, reset;
    input [3:0] keypadCol;
    output [7:0] dot_row, dot_col;
	 output [3:0] keypadRow;

    wire div_clk_100, div_clk_10000;
    wire [3:0] in;

    clk_div_100(clock, reset, div_clk_100);
    clk_div_10000(clock, reset, div_clk_10000);
    checkkeypad(div_clk_100, reset, keypadCol, keypadRow, in);
    dot_diaplay(div_clk_10000, reset, in, dot_row, dot_col);
    
endmodule 
