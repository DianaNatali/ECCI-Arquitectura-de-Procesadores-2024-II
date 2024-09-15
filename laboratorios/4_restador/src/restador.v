`include "sum4b.v"

module restador (
    input  [3:0] A,
    input  [3:0] B,
    input  sel,
    output wire [3:0] So,
    output wire Co
);


wire b0, b1, b2, b3;

wire [3:0] wS;

assign b0 = B[0] ^ sel;
assign b1 = B[1] ^ sel;
assign b2 = B[2] ^ sel;
assign b3 = B[3] ^ sel;

sum4b sumres(.A(A), .B({b3,b2,b1,b0}), .Ci(sel), .So(wS), .Co(Co));

assign So = (Co)? wS : ~wS + 1'b1;

 
endmodule