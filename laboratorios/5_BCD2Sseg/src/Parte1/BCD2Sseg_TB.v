`timescale 1ns / 1ps
`include "./BCD2Sseg.v"

module BCD2SSeg_TB;

	reg [3:0] BCD;

	// Instantiate the Unit Under Test (UUT)
	BCD2Sseg uut (
		.BCD(BCD)
	);

	initial begin
		BCD = 4'd0; #10;
		BCD = 4'd1; #10;
		BCD = 4'd2; #10;
		BCD = 4'd3; #10;
		BCD = 4'd4; #10;
		BCD = 4'd5; #10;
		BCD = 4'd6; #10;
		BCD = 4'd7; #10;
		BCD = 4'd8; #10;
		BCD = 4'd9; #10;
		BCD = 4'ha; #10;
	end

    initial begin: TEST_CASE
        $dumpfile("BCD2Sseg.vcd");
	    $dumpvars(-1, uut);
        #(200) $finish;
    end

endmodule