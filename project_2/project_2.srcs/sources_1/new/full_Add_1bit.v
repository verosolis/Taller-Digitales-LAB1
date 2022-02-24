`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/23/2022 10:35:28 PM
// Design Name: 
// Module Name: full_Add_1bit
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


module full_Add_1bit(
    input a,
    input b,
    input cin,
    output sum,
    output cout

    );
    
    wire w1;
    wire w2Sum;
    wire w3;
    wire w4;
    wire w5Cout;
    
     xor(w1,a,b);
     xor(w2Sum,w1,cin);
     assign sum=w2Sum;
     
     and(w3,w1,cin);
     and(w4,a,b);
     or(w5Cout,w3,w4);
    assign cout=w5Cout;
endmodule
