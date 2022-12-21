module vertical(clk_div_25M, enable_V_counter, V_count_value);

    input clk_div_25M, enable_V_counter;
    output reg [15:0] V_count_value = 0;

    always@(posedge clk_div_25M)
    begin 
        if(enable_V_counter == 1'b1) 
        begin
            if(V_count_value < 524)
                V_count_value <= V_count_value + 1;
            else
                V_count_value <= 0;
        end
        else;

    end





endmodule
