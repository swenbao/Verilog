`define TimeExpire 32'd2500

module clk_div_dot(clk, reset, div_clk);
input clk, reset;
output div_clk;

reg div_clk;
reg [31:0] count;

always@(posedge clk)
begin

		if(count == `TimeExpire)
		begin
			count <= 32'd0;
			div_clk <= ~div_clk;
		end
		else
		begin
			count <= count + 32'd1;
		end

end
endmodule
