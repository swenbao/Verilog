
module horizontal(clk_div_25M, enable_V_counter, H_count_value)

    input clk_div_25M;
    output reg enable_V_counter = 0;
    output reg [15:0] H_count_value = 0;

    always@(posedge clk_div_25M)
    begin 
        if(H_count_value < 799)
        begin
            H_count_value <= H_count_value + 1;
            enable_V_counter <= 0;
        end
        else
        begin 
            H_count_value <= 0;
            enable_V_counter <= 1;
        end
    end
endmodule