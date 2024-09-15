module sum1b(A, B, Ci, S, Co);

input A;
input B;
input Ci;

output S;
output Co;

wire xor1;
wire and1;
wire and2;

assign xor1 = A ^ B;
assign and1 = xor1 & Ci;
assign and2 = A & B;
assign S = xor1 ^ Ci;
assign Co = and1 | and2;


endmodule