`timescale 1ns/1ps

module decoder_tb;

  // Testbench signals
  logic [3:0] binary;
  logic [15:0] one_hot;

  // Instantiate the decoder module
  decoder uut (
    .binary(binary),
    .one_hot(one_hot)
  );

  initial begin
    #10;
    binary = 4'b0000;

    #5;
    binary = 4'b1000;

    #5ns;
    binary = 4'b1011;

    #5ns;
    binary = 4'b1111;

    #5ns;
    binary = 4'b0111;

    #10ns;
    $finish;


  end
  // Complete your testbench here
endmodule
