`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 14.11.2024 14:17:39
// Design Name: 
// Module Name: GCD_cal
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


module GCD_cal(
input [3:0] x_i, y_i,
input go_i,
input clk,rst,
output [3:0] dout
    );
    wire w3,w6,w7,w9,w12;
   wire [3:0] w1,w2,w4,w5,w8,w10;
   wire [1:0] w11;
    mux M1 (w1,x_i,w2,rst,w3);
    mux M2 (w4,y_i,w5,rst,w6);
    regis R1(rst,clk,w7,w1,w8);
    regis R2 (rst, clk, w9, w4, w10);
    comparator C1(w11, w8,w10,rst);
     subtractor S1( w8,w10, w2,w5,w11,rst);
     regis R3( rst, clk,w12, w2,dout);
     fsm F1(rst, clk, go_i,w11,w3,w6,w7,w9,w12); 
    
    
    
endmodule
