module TimeDisplayModeSelector(
	 input clk,
    input sw,
    output reg enable = 0
    );

parameter ts = 0, ss = 1;
reg next = 0;

always @(posedge clk) begin
	case (next)
		ts:
			if (sw == 1) begin
				next <= ss;
				enable <= 0;
			end
			else begin
				next <= ts;
				enable <= 1;
			end
		ss:
			if (sw == 1) begin
				next <= ts;
				enable <= 1;
			end
			else begin
				next <= ss;
				enable <= 0;
			end
	endcase
end
endmodule
