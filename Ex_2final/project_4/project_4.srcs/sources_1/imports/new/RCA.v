`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/24/2022 12:40:59 AM
// Design Name: 
// Module Name: RCA
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

module RCA #(parameter WIDTH=8)(

        input [WIDTH-1:0] a,
        input [WIDTH-1:0] b,
        input cin,
        output [WIDTH-1:0]sum,
        output cout

    );
    
    wire [WIDTH:0]CIns;
    assign CIns[0] =cin;
    wire  [WIDTH-1:0]intern_Sum;
    
    generate
    genvar d;
    for (d=0;d<WIDTH;d=d+1)
    begin
    full_Add_1bit u(.a(a[d]),.b(b[d]),.cin(CIns[d]),.sum(intern_Sum[d]),.cout(CIns[d+1]));
    end
    
    endgenerate
    assign cout= CIns[WIDTH:0];
    assign sum= intern_Sum;
    
    
    
endmodule

