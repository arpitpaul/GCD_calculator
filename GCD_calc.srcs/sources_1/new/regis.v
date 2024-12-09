`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 14.11.2024 13:49:00
// Design Name: 
// Module Name: regis
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


module regis(
input rst,clk, load,
input [3:0] din,
output reg [3:0] dout
    );
    
    
    always @ (posedge clk)
    begin
      if(rst)
        dout <= 4'd0;
      else
        begin
          if(load)
            dout <= din;
        
        end
    
    end
endmodule
