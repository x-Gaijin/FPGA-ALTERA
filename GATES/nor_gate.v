module nor_gate(a,b,o);
   input wire a,b;
   output wire o;

   assign o = ~(a | b);
endmodule