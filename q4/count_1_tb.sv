`timescale 1ns/1ps 

module count_1_tb;

  // Inputs
  logic [3:0] a;

  // Outputs
  logic [2:0] out;

  count_1 dut(
    .a(a),
    .out(out)
  );

  initial begin

#15;
    a = 4'b0000;
#5;
        a = 4'b0110;
#5;
        a = 4'b1110;
#5;
        a = 4'b1111;
#5;
        a = 4'b1000;
#5;
        a = 4'b0010;
#5;
       a = 4'b1000;
#5;
        a = 4'b1101;
#5;
     
$finish;
  end
  
  // complete
endmodule
