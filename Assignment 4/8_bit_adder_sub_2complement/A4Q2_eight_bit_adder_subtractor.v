`include "A4Q2_one_bit_adder_subtractor.v"
module eight_bit_adder_subtractor (x, y, opcode, sum, carry_out, overflow);

   // Taking inputs
   input [7:0] x;
   input [7:0] y;
   input opcode;

   // Outputs
   output wire [7:0] sum;
   output wire carry_out, overflow;

   // Wire for intermediate carry
   wire [6:0] inter_carry;

   // Instantiating the 8 one-adder modules
   one_bit_adder_subtractor full_add_sub0 (x[0], y[0], opcode, opcode, sum[0], inter_carry[0]);
   one_bit_adder_subtractor full_add_sub1 (x[1], y[1], inter_carry[0], opcode, sum[1], inter_carry[1]);
   one_bit_adder_subtractor full_add_sub2 (x[2], y[2], inter_carry[1], opcode, sum[2], inter_carry[2]);
   one_bit_adder_subtractor full_add_sub3 (x[3], y[3], inter_carry[2], opcode, sum[3], inter_carry[3]);
   one_bit_adder_subtractor full_add_sub4 (x[4], y[4], inter_carry[3], opcode, sum[4], inter_carry[4]);
   one_bit_adder_subtractor full_add_sub5 (x[5], y[5], inter_carry[4], opcode, sum[5], inter_carry[5]);
   one_bit_adder_subtractor full_add_sub6 (x[6], y[6], inter_carry[5], opcode, sum[6], inter_carry[6]);
   one_bit_adder_subtractor full_add_sub7 (x[7], y[7], inter_carry[6], opcode, sum[7], carry_out);

   assign overflow = inter_carry[6] ^ carry_out;

endmodule