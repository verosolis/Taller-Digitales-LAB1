`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/24/2022 12:43:46 AM
// Design Name: 
// Module Name: testbench_RCA
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

module testbench_RCA;
    
   
     parameter width=16;
    reg [width-1:0] a;
    reg [width-1:0] b;
    wire [width-1:0] sum;
    reg cin;
    wire [width:0]cout;
    
    
   RCA #(.WIDTH(width))uut(.a(a),.b(b),.cin(cin),.sum(sum),.cout(cout));
   
    initial begin

a = 4'b0000;
b= 4'b0001;
cin=1'b1;

  
#20;
a = 8'b01000100;
b= 8'b01000100;
cin=1'b0;
#40;
a = 16'b1010101010101010;
b = 16'b1100110011001100;
cin=1'b0;
      

end


endmodule
