`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 14.11.2024 14:44:14
// Design Name: 
// Module Name: tb
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


module tb(

    );
    
    reg [3:0] x_i,y_i;
    wire [3:0] dout;
    reg rst,go_i,clk;
    
    
    GCD_cal dut(x_i,y_i, go_i,clk, rst, dout);
    initial begin
      clk =1;
      go_i=1;
      rst = 1;
      x_i=4'd10; y_i=4'd2;
      #40;
           rst =0;
   
  
  
 
      
    
    end
    
    always #5 clk = ~clk;
endmodule
