`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 14.11.2024 13:24:26
// Design Name: 
// Module Name: mux
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


module mux(
output reg [3:0] dout,
input [3:0] load,result,
input rst, sline
    );
    
    always @(*)
    begin
    if(rst)
     dout = 4'd0;
   
      else if(sline == 0)
         dout = load;
       else
         dout = result;
     
     end
    

    
    
    
endmodule
