`timescale 1ns/1ps

module csa_8_tb;

  // Inputs
  logic [7:0] a;
  logic [7:0] b;
  logic [7:0] sum,
  logic carry;

  csa_8 dut(
    .a(a),
    .b(b),
    .sum(sum),
    .carry(carry)
  );

  initial begin
#15;

a = 8'b0;
b = 8'b0;

#5;
a = 8'b0000_0001;
b = 8'b0000_0001;

#5;

a = 8'b0010_0001;
b = 8'b0000_1001;

#5;

a = 8'b0011_0001;
b = 8'b1101_0001;

#5;
a = 8'b1111_0101;
b = 8'b1111_0001;

#5;

a = 8'b0001_1001;
b = 8'b0110_0001;

#5;

a = 8'b1111_1111;
b = 8'b1111_1111;

#5;

    

$finish;
  end
  // complete
  
endmodule
