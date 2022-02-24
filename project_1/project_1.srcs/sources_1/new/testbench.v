`timescale 10ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/22/2022 07:55:34 PM
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
    
    
reg [15:0]sw;
reg [3:0] btns;
reg clk;
wire[15:0]tempLeds;

exercice1 uut(.clk(clk),.btnU(btns[0]),.btnR(btns[1]),.btnD(btns[2]),.btnL(btns[3]),.swtch(sw),.led(tempLeds));

initial begin
    clk = 0;
    forever #5 clk= ~clk;
end

//initial begin
 //   test1 ();
 //$finish;
//end 
initial begin
   test2();
   $finish;
end 
//initial begin
//    test3();
//  $finish;
//end 
//initial begin
//   test4();
//   $finish;
//end 


task test1();
begin
sw[0]  = 1'b1; sw[1]  = 1'b1;sw[2]  = 1'b1; sw[3]  = 1'b1;
sw[4]  = 1'b1; sw[5]  = 1'b1;sw[6]  = 1'b1; sw[7]  = 1'b1;
sw[8]  = 1'b1; sw[9]  = 1'b1; sw[10] = 1'b1; sw[11] = 1'b1;
sw[12] = 1'b1; sw[13] = 1'b1; sw[14] = 1'b1; sw[15] = 1'b1;

  btns[0] = 1'b0; btns[1] = 1'b0; btns[2] = 1'b0; btns[3] = 1'b0;
#4 btns[0] = 1'b1; btns[1] = 1'b0; btns[2] = 1'b0; btns[3] = 1'b0;
#9 btns[0] = 1'b1; btns[1] = 1'b1; btns[2] = 1'b0; btns[3] = 1'b0;
#14 btns[0] = 1'b1; btns[1] = 1'b1; btns[2] = 1'b1; btns[3] = 1'b0;
#19 btns[0] = 1'b1; btns[1] = 1'b1; btns[2] = 1'b1; btns[3] = 1'b1; 
end

endtask 

task test2();
begin
sw[0]  = 1'b0; sw[1]  = 1'b0;sw[2]  = 1'b0; sw[3]  = 1'b0;
sw[4]  = 1'b1; sw[5]  = 1'b1;sw[6]  = 1'b1; sw[7]  = 1'b1;
sw[8]  = 1'b0; sw[9]  = 1'b0; sw[10] = 1'b0; sw[11] = 1'b0;
sw[12] = 1'b0; sw[13] = 1'b0; sw[14] = 1'b0; sw[15] = 1'b0;

    btns[0] = 1'b0; btns[1] = 1'b0; btns[2] = 1'b0; btns[3] = 1'b0;
#4 btns[0] = 1'b1; btns[1] = 1'b0; btns[2] = 1'b0; btns[3] = 1'b0;
#9 btns[0] = 1'b1; btns[1] = 1'b1; btns[2] = 1'b0; btns[3] = 1'b0;
#14 btns[0] = 1'b1; btns[1] = 1'b1; btns[2] = 1'b1; btns[3] = 1'b0;
#19 btns[0] = 1'b1; btns[1] = 1'b1; btns[2] = 1'b1; btns[3] = 1'b1; 
end
endtask

task test3();
begin
sw[0]  = 1'b1; sw[1]  = 1'b0;sw[2]  = 1'b0; sw[3]  = 1'b0;
sw[4]  = 1'b0; sw[5]  = 1'b1;sw[6]  = 1'b0; sw[7]  = 1'b0;
sw[8]  = 1'b0; sw[9]  = 1'b0; sw[10] = 1'b1; sw[11] = 1'b0;
sw[12] = 1'b0; sw[13] = 1'b0; sw[14] = 1'b0; sw[15] = 1'b1;

  btns[0] = 1'b0; btns[1] = 1'b0; btns[2] = 1'b0; btns[3] = 1'b0;
#4 btns[0] = 1'b1; btns[1] = 1'b0; btns[2] = 1'b0; btns[3] = 1'b0;
#9 btns[0] = 1'b1; btns[1] = 1'b1; btns[2] = 1'b0; btns[3] = 1'b0;
#14 btns[0] = 1'b1; btns[1] = 1'b1; btns[2] = 1'b1; btns[3] = 1'b0;
#19 btns[0] = 1'b1; btns[1] = 1'b1; btns[2] = 1'b1; btns[3] = 1'b1; 
end
endtask

task test4();
begin
sw[0]  = 1'b1; sw[1]  = 1'b0;sw[2]  = 1'b1; sw[3]  = 1'b0;
sw[4]  = 1'b0; sw[5]  = 1'b1;sw[6]  = 1'b1; sw[7]  = 1'b0;
sw[8]  = 1'b0; sw[9]  = 1'b0; sw[10] = 1'b1; sw[11] = 1'b1;
sw[12] = 1'b1; sw[13] = 1'b0; sw[14] = 1'b0; sw[15] = 1'b1;

    btns[0] = 1'b0; btns[1] = 1'b0; btns[2] = 1'b0; btns[3] = 1'b0;
#4 btns[0] = 1'b1; btns[1] = 1'b0; btns[2] = 1'b0; btns[3] = 1'b0;
#9 btns[0] = 1'b1; btns[1] = 1'b1; btns[2] = 1'b0; btns[3] = 1'b0;
#14 btns[0] = 1'b1; btns[1] = 1'b1; btns[2] = 1'b1; btns[3] = 1'b0;
#19 btns[0] = 1'b1; btns[1] = 1'b1; btns[2] = 1'b1; btns[3] = 1'b1; 
end
endtask

endmodule
// ********** TASKS **********


