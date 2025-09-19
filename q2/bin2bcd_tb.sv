`timescale 1ns/1ps

module bin2bcd_tb;

  // Testbench signals
  logic [3:0] binary;
  logic [3:0] bcd;
  logic carry;

  bin2bcd dut(
    .binary(binary),
    .bcd(bcd),
    .carry(carry)
  );

initial begin

#15;
  binary = 4'b0000;
#5;
  binary = 4'b0010;
#5;
  binary = 4'b1010;
#5;
  binary = 4'b1110;
#5;
  binary = 4'b1111;
#5;
  binary = 4'b0011;
#5;
  binary = 4'b1011;
#5;
  binary = 4'b0001;
#5;
  binary = 4'b1001;
#5;
  binary = 4'b1011;
#5;
  binary = 4'b0101;
#5;
  binary = 4'b0010;
  
$finish;

end
  
  // complete your tb
endmodule
