module csa_8 (
  input logic [7:0] a, b,
  output logic [7:0] sum,
  output logic carry
);

  logic cout1,cout2,cout3;
  logic [3:0] sum2,sum3;
  
  adder_4 u1 (.A(a[3:0]), .B(b[3:0]), .cin(1'b0), .sum(sum[3:0]), .carry(cout1));
  adder_4 u2 (.A(a[7:4]), .B(b[7:4]), .cin(1'b0), .sum(sum2), .carry(cout2));
  adder_4 u3 (.A(a[7:4]), .B(b[7:4]), .cin(1'b1), .sum(sum3), .carry(cout3));
  
  assign sum[7:4] = cout1 ? sum3 : sum2;
  assign carry = cout1 ? cout3 : cout2;
  
endmodule
