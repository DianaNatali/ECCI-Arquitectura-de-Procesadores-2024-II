`include "./BCD2Sseg.v"

module decoder#(parameter displays=3, segments = 7)(
    input  [15:0] num,
    output [segments*displays-1:0] Sseg
);

wire [3:0]bcd_units;
wire [3:0]bcd_tens;
wire [3:0]bcd_hundreds;

wire [6:0] sseg_units;
wire [6:0] sseg_tens;
wire [6:0] sseg_hundreds;

BCD2Sseg BCD2Sseg0(.BCD(bcd_units), .Sseg(sseg_units));
BCD2Sseg BCD2Sseg1(.BCD(bcd_tens), .Sseg(sseg_tens));
BCD2Sseg BCD2Sseg2(.BCD(bcd_hundreds), .Sseg(sseg_hundreds));

assign bcd_units = num%10; 
assign bcd_tens = (num%100 - num%10)/10; 
assign bcd_hundreds = (num%1000 - num%100) / 100;
assign Sseg = {sseg_hundreds, sseg_tens, sseg_units};

endmodule