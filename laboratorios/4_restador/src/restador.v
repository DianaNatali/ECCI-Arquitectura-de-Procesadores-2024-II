`include "sum4b.v"

module restador (
input  [3:0] A,
input  [3:0] B,
input  sel,
output reg [3:0] S,
output Co
);


parameter sel = 1'b1;

wire b0;
wire b1;
wire b2;
wire b3;
wire [3:0] wS;

assign b0 = B[0] ^ sel;
assign b1 = B[1] ^ sel;
assign b2 = B[2] ^ sel;
assign b3 = B[3] ^ sel;

sum4b sumres(.A(A), .B({b3,b2,b1,b0}), .Ci(sel), .S(wS), .Co(Co));
    
assign s0 = wS[0] ^ ~Co;
assign s1 = wS[1] ^ ~Co;
assign s2 = wS[2] ^ ~Co;
assign s3 = wS[3] ^ ~Co;

always @(*) begin
    case (Co)
        1'b0: S = {s3,s2,s1,s0} + 1'b1;
        1'b1: S = {s3,s2,s1,s0};
        default: S = 0;
    endcase
end

 
endmodule