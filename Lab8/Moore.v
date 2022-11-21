module Moore(clock_div, reset, in, tmp);

input clock_div, reset, in;
output reg [3:0] tmp;
reg[3:0] current, next;

parameter[3:0]ST0 = 4'b0000,
              ST1 = 4'b0001,
              ST2 = 4'b0010,
              ST3 = 4'b0011,
			  ST4 = 4'b0100,
			  ST5 = 4'b0101;

always@(posedge clock_div or negedge reset)
begin
    if(reset == 0)
            current = ST0;
    else
        current = next;
end

always@(in or current)
begin
	if(in == 0)
	begin
		case(current)
			ST0: next = ST1;
			ST1: next = ST2;
			ST2: next = ST3;
			ST3: next = ST4;
			ST4: next = ST5;
			ST5: next = ST0;
      endcase
	end
   else
	begin
	  case(current)
			ST0: next = ST3;
			ST1: next = ST5;
			ST2: next = ST0;
			ST3: next = ST1;
			ST4: next = ST2;
			ST5: next = ST4;
	  endcase
	end
end

always@(current)
begin
    case(current)
        ST0: tmp = ST0;
        ST1: tmp = ST1;
        ST2: tmp = ST2;
        ST3: tmp = ST3;
        ST4: tmp = ST4;
        ST5: tmp = ST5;
    endcase 
end
endmodule
