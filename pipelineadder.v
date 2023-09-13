`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 28.08.2023 09:43:54
// Design Name: 
// Module Name: pipelineadder
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


module pipelineadder(input clk,
input rst,
input  [3:0]a,
input  [3:0]b,
input cin,
output  reg[3:0]sum,
output  reg cout
    );
    reg [3:0] a_r,b_r;
    reg c_in;
    wire [3:0] s_r;
    wire c_r;
    pipefulladder uut(.a(a_r), .b(b_r), .cin(c_in), .sum(s_r), .cout(c_r));
    always @ (posedge clk or posedge rst) begin
    if(rst)
    begin
    a_r<=4'b0000;
    b_r<=4'b0000;
    c_in<=1'b0;
    
    
    end
    else
    begin
    a_r<=a;
    b_r<=b;
    c_in<=cin;
    sum<=s_r;
    cout<=c_r;
    end
    end



endmodule




