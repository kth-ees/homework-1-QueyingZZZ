module arithmetic_right_shifter #(parameter N = 5) (
  input logic [N-1:0] input_data,
 // input logic [1:0] control,
  output logic [N-1:0] shifted_result
);

  always_comb begin
  
shifted_result[N-2:0] = input_data[N-1:1];
shifted_result[N-1]   = input_data[N-1];

end

  // complete the module
endmodule
