module color_manip();

input reset, R, G, B;
input [15:0] H_count_value, V_count_value;
output H_sync, V_sync;
output [3:0] VGA_red, VGA_green, VGA_blue;

reg R_value = 0
    , G_value = 0
    , B_value = 0;

/*
always@(R or G or B)
begin
    if(R)
        R_count = R_count + 1;
end
*/

always@(reset or R or G or B)
begin
    if(!reset)
    begin
        VGA_red = 4'h0;
        VGA_green = 4'h0;
        VGA_blue = 4'h0;
    end
    else if(R == 1)
    begin 
        // outputs
        H_sync = (H_count_value < 96) ? 1'b1 : 1'b0;
        V_sync = (V_count_value < 2) ? 1'b1 : 1'b0;
        // colors
        VGA_red = (H_count_value < 784 && H_count_value > 143 && V_count_value < 515 && V_count_value > 34) ? 4'hF : 4'h0;
    end
    else if (G == 1)
    begin
        // outputs
        H_sync = (H_count_value < 96) ? 1'b1 : 1'b0;
        V_sync = (V_count_value < 2) ? 1'b1 : 1'b0;
        // colors
        VGA_green = (H_count_value < 784 && H_count_value > 143 && V_count_value < 515 && V_count_value > 34) ? 4'hF : 4'h0;
    end
    else if (B == 1)
    begin
        // outputs
        H_sync = (H_count_value < 96) ? 1'b1 : 1'b0;
        V_sync = (V_count_value < 2) ? 1'b1 : 1'b0;
        // colors
        VGA_blue = (H_count_value < 784 && H_count_value > 143 && V_count_value < 515 && V_count_value > 34) B_value?  : 4'h0;
    end
end
endmodule
