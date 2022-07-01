`include "gcd.v"
module gcd_tb;

reg [7:0] a;
reg [7:0] b;
reg clk;
reg rst;

gcd uut(a,b,clk,rst);

initial begin
a = 8'b00010000;
b = 8'b00010010;
#25
a = 8'b00010010;
b = 8'b00011111;
#25
a = 8'b00000100;
b = 8'b00000010;
#25
a = 8'b00010000;
b = 8'b00010010;
#25
a = 8'b00001100;
b = 8'b00000101;
#25
a = 8'b00001100;
b = 8'b00001001;
#25
a = 8'b00010100;
b = 8'b00001100;
#25
a = 8'b00101000;
b = 8'b00010100;
#25
a = 8'b00001011;
b = 8'b00000111;
#25
a = 8'b00010100;
b = 8'b00101000;
#25
a = 8'b00000111;
b = 8'b00001011;
#25
a = 8'b00110000;
b = 8'b00100100;
#25
a = 8'b00010000;
b = 8'b00010010;
#25
a = 8'b00010011;
b = 8'b00001101;
#25
a = 8'b00100111;
b = 8'b00011010;
#25
a = 8'b00010101;
b = 8'b00001110;
#25
#1000 $finish;
end

always begin
#1
clk = 0;
#1
clk = 1;
end

endmodule