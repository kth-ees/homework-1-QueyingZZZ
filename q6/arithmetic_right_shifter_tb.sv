`timescale 1ns/1ps

module arithmetic_right_shifter_tb;

  localparam N = 8;
  logic [N-1:0] input_data;
  logic [N-1:0] shifted_result;

  arithmetic_right_shifter #(N) dut(
    .input_data(input_data),
    .shifted_result(shifted_result)
  );
  
initial begin
#15;
    input_data = 8'b0;
#5;
    input_data = 8'b0001_1111;
#5;
    input_data = 8'b0011_0101;
#5;
    input_data = 8'b1100_1100;
#5;
    input_data = 8'b0000_1111;
#5;
  input_data =   8'b0010_0101;
#5;
    input_data = 8'b0110_1101;
#5;
    input_data = 8'b0100_1100;
#5;
  

$finish;
end
  // complete
  // Inputs
endmodule
