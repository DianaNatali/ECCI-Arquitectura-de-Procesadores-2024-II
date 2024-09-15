module sum1b(
    input A, 
    input B, 
    input Ci,
    output wire Co,
    output wire So
);

reg [1:0] result;

assign So = result[0];
assign Co = result[1];

always@(*) begin
  result = A+B+Ci;
end

endmodule