module bin2bcd (
  input logic [3:0] binary,
  output logic [3:0] bcd,
  output logic carry
  );
  
always_comb begin

if (binary < 4'd10) begin
 bcd = binary;
 carry = 1'b0;
end

else begin

bcd = binary - 4'd10;
carry = 1'b1;

end

end
  
  
endmodule
