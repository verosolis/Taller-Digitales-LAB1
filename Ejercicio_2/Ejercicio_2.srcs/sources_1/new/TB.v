`timescale 10ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/19/2022 07:46:56 PM
// Design Name: 
// Module Name: TB
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module TB;
reg A,B,C,D;
reg clk;
reg [1:0]selection;
reg Y;

mux_4_to_1(.A(A),.B(B),.C(C),.D(D),.clk(clk),.selection(selection),.Y(Y));

initial begin
    test1();
    $finish;
end 

initial begin
    test2();
    $finish;
end 
initial begin
    test3();
    $finish;
end 
initial begin
    test4();
    $finish;
end 
initial begin
    clk = 0;
    forever #5 clk= ~clk;
end

initial begin
//$dumpvars
$display (" clk |  A  |  B  |  C  |  D  |  Y  | ");
$monitor (" %b  |  %b |  %b |  %b |  %b |  %b | ", clk,A,B,C,D,Y);

end


endmodule

task test1(output A,output B,output C,output D);
begin
 A = 4'b0000;
 B = 4'b0110;
 C = 4'b1000;
 D = 4'b1111;
end
endtask

task test2(output A,output B,output C,output D);
begin
 A = 8'b00000000;
 B = 8'b01100110;
 C = 8'b10001000;
 D = 8'b11111111;
end
endtask

task test3(output A,output B,output C,output D);
begin
 A = 16'b0000000000000000;
 B = 16'b0110011001100110;
 C = 16'b1000100010001000;
 D = 16'b1111111111111111;
end
endtask
