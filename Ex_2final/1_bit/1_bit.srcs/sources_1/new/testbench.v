`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/28/2022 08:48:22 PM
// Design Name: 
// Module Name: testbench
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


module testbench;

    reg [4:0] a;
    reg [4:0] b;
    wire  sum;
    reg cin;
    wire cout;
    
    full_Add_1bit u(.a(a),.b(b),.cin(cin),.sum(sum),.cout(cout));
   
initial begin

a = 4'b0000;
b= 4'b0001;
cin=1'b1;

#20
a = 4'b1111;
b= 4'b0001;
cin=1'b0;

   end
endmodule
