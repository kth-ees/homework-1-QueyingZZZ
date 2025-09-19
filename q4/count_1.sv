module count_1 (
  input logic [3:0] a,
  output logic [2:0] out
);

  always_comb begin
  
    out = 3'b0;
     
    for(int i = 0; i < 4; i++) begin
    if(a[i]) 
     out = out + 1'b1;
                               end
              end
     
endmodule
