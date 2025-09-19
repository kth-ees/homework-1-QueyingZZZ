`timescale 1ns/1ps

module bin2gray_tb;

  // Inputs
  logic [3:0] binary;

  // Outputs
  logic [3:0] gray;

  bin2gray dut(
    .binary(binary),
    .gray(gray)
  );


initial begin
#15;

  binary = 4'b0000;
  #5;

   binary = 4'b1100;
  #5;
   binary = 4'b0011;
  #5;
   binary = 4'b0110;
  #5;
   binary = 4'b1111;
  #5;
   binary = 4'b1000;
  #5;
   binary = 4'b0001;
  #5;
   binary = 4'b0111;
  
  #5; 
  binary = 4'b0111;
  #5;
  

$finish;
end

  
  // complete
endmodule
