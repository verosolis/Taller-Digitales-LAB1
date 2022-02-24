`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/23/2022 10:48:48 PM
// Design Name: 
// Module Name: testbench_1bit
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


module testbench_1bit;


integer a;
integer b;
integer cin;
wire sum;
wire cout;

full_Add_1bit uut(.a(a),.b(b),.cin(cin),.sum(sum),.cout(cout));

initial begin
test2();
end

task test1();
begin
    a=1'b1;
    b=1'b0;
    cin=1'b0;
end
endtask
task test2();
begin
    a=1'b1;
    b=1'b1;
    cin=1'b1;
end
endtask
task test3();
begin
    a=1'b0;
    b=1'b1;
end
endtask
endmodule
