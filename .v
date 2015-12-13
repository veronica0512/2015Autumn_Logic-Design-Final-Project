module TimeCounter(
	input clk,
	input [5:0] hour_in,
	input [5:0] min_in,
	input [5:0] sec_in,
	output [5:0] hour_out,
	output [5:0] min_out,
	output [5:0] sec_out
    );
	wire minrci, hrci;

	
SecCounter sec(clk, sec_in, minrci, sec_out);
MinCounter min(clk, minrci, min_in, hrci, min_out);
HCounter hour(clk, hrci, hour_in, ,hour_out);


endmodule
