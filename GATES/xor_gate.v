module xor_gate(a,b,out);
input wire a,b;
output wire out;

assign out = a ^ b;
endmodule