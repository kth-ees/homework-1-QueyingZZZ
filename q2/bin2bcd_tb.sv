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
  
  // complete your tb
endmodule
