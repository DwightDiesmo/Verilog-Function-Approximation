`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/12/2021 07:13:21 PM
// Design Name: 
// Module Name: LUT
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


module LUT #(parameter WA = 6, WL = 32) (
        input [WA-1:0] address,
        output reg signed [WL-1:0] segmentCoeff 
    );
    
    always @(*) begin
        if(address == 0) segmentCoeff = 'b1111111100110111_0001000000000011;
        else if (address == 1) segmentCoeff = 'b1111110110101000_0001000000101010;
        else if (address == 2) segmentCoeff = 'b1111110000011101_0001000001111000;
        else if (address == 3) segmentCoeff = 'b1111101010011101_0001000011101001;        
        else if (address == 4) segmentCoeff = 'b1111100100101001_0001000101111011;  
        else if (address == 5) segmentCoeff = 'b1111011111000111_0001001000101000;  
        else if (address == 6) segmentCoeff = 'b1111011001111001_0001001011101101;  
        else if (address == 7) segmentCoeff = 'b1111010101000010_0001001111000010; 
        else if (address == 8) segmentCoeff = 'b1111010000100110_0001010010100001;    
        else if (address == 9) segmentCoeff = 'b1111001100100111_0001010110000011;    
        else if (address == 10) segmentCoeff = 'b1111001001001000_0001011001011101;    
        else if (address == 11) segmentCoeff = 'b1111000110001010_0001011100101010;    
        else if (address == 12) segmentCoeff = 'b1111000011110000_0001011111011111;    
        else if (address == 13) segmentCoeff = 'b1111000001111100_0001100001110011;    
        else if (address == 14) segmentCoeff = 'b1111000000101101_0001100011011111;    
        else if (address == 15) segmentCoeff = 'b1111000000000110_0001100100011001;    
        else if (address == 16) segmentCoeff = 'b1111000000000110_0001100100011001;    
        else if (address == 17) segmentCoeff = 'b1111000000101101_0001100011010111;    
        else if (address == 18) segmentCoeff = 'b1111000001111100_0001100001001100;    
        else if (address == 19) segmentCoeff = 'b1111000011110000_0001011101110010;    
        else if (address == 20) segmentCoeff = 'b1111000110001010_0001011001000100;    
        else if (address == 21) segmentCoeff = 'b1111001001001000_0001010010111101;    
        else if (address == 22) segmentCoeff = 'b1111001100100111_0001001011011011;    
        else if (address == 23) segmentCoeff = 'b1111010000100110_0001000010011011;    
        else if (address == 24) segmentCoeff = 'b1111010101000010_0000110111111101;    
        else if (address == 25) segmentCoeff = 'b1111011001111001_0000101100000010;    
        else if (address == 26) segmentCoeff = 'b1111011111000111_0000011110101101;    
        else if (address == 27) segmentCoeff = 'b1111100100101001_0000010000000010;    
        else if (address == 28) segmentCoeff = 'b1111101010011100_0000000000000101;    
        else if (address == 29) segmentCoeff = 'b1111110000011101_1111101110111110;    
        else if (address == 30) segmentCoeff = 'b1111110110100111_1111011100110101;    
        else if (address == 31) segmentCoeff = 'b1111111100110111_1111001001110100;    
        else if (address == 32) segmentCoeff = 'b0000000011001001_1110110110000101;    
        else if (address == 33) segmentCoeff = 'b0000001001011001_1110100001110110;    
        else if (address == 34) segmentCoeff = 'b0000001111100011_1110001101010010;    
        else if (address == 35) segmentCoeff = 'b0000010101100100_1101111000101001;    
        else if (address == 36) segmentCoeff = 'b0000011011010111_1101100100001001;    
        else if (address == 37) segmentCoeff = 'b0000100000111001_1101010000000001;    
        else if (address == 38) segmentCoeff = 'b0000100110000111_1100111100100011;    
        else if (address == 39) segmentCoeff = 'b0000101010111110_1100101001111110;    
        else if (address == 40) segmentCoeff = 'b0000101111011010_1100011000100010;    
        else if (address == 41) segmentCoeff = 'b0000110011011001_1100001000100000;    
        else if (address == 42) segmentCoeff = 'b0000110110111000_1011111010001000;    
        else if (address == 43) segmentCoeff = 'b0000111001110110_1011101101101000;    
        else if (address == 44) segmentCoeff = 'b0000111100010000_1011100011010000;    
        else if (address == 45) segmentCoeff = 'b0000111110000100_1011011011001101;    
        else if (address == 46) segmentCoeff = 'b0000111111010011_1011010101101011;    
        else if (address == 47) segmentCoeff = 'b0000111111111010_1011010010110110;    
        else if (address == 48) segmentCoeff = 'b0000111111111010_1011010010110110;    
        else if (address == 49) segmentCoeff = 'b0000111111010011_1011010101110100;    
        else if (address == 50) segmentCoeff = 'b0000111110000100_1011011011110101;    
        else if (address == 51) segmentCoeff = 'b0000111100010000_1011100100111110;    
        else if (address == 52) segmentCoeff = 'b0000111001110110_1011110001001111;    
        else if (address == 53) segmentCoeff = 'b0000110110111000_1100000000101001;    
        else if (address == 54) segmentCoeff = 'b0000110011011001_1100010011001001;    
        else if (address == 55) segmentCoeff = 'b0000101111011010_1100101000101010;    
        else if (address == 56) segmentCoeff = 'b0000101010111110_1101000001000101;    
        else if (address == 57) segmentCoeff = 'b0000100110000111_1101011100010000;    
        else if (address == 58) segmentCoeff = 'b0000100000111001_1101111001111111;    
        else if (address == 59) segmentCoeff = 'b0000011011010111_1110011010000100;    
        else if (address == 60) segmentCoeff = 'b0000010101100011_1110111100001111;    
        else if (address == 61) segmentCoeff = 'b0000001111100011_1111100000001110;    
        else if (address == 62) segmentCoeff = 'b0000001001011000_0000000101101110;    
        else if (address == 63) segmentCoeff = 'b0000000011001001_0000101100010111;              
    end
endmodule
