`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/13/2021 10:56:01 AM
// Design Name: 
// Module Name: tb_PLA
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
module tb_PLA;
    reg signed [15:0] x;
    wire signed [15:0] cosine;
    
    PieceWiseLinearApproximation #(.WL(16),.WA(6),.WO(16)) DUT (.x(x),.cosine(cosine));
    
    integer c;
    initial begin
        c = $fopen("outputcosine2.txt");
    end
    
    integer i;
    reg [15:0] mem [255:0];
    
    initial begin
//        x = 'b0000000000000000;
//        #1 x = 'b0000000001100101; $fwrite(c,"%b\n",cosine);
//        #1 x = 'b0000000011001010; $fwrite(c,"%b\n",cosine);
//        #1 x = 'b0000000100101111; $fwrite(c,"%b\n",cosine);
//        #1 x = 'b0000000110010100; $fwrite(c,"%b\n",cosine);
//        #1 x = 'b0000000111111001; $fwrite(c,"%b\n",cosine);
//        #1 x = 'b0000001001011110; $fwrite(c,"%b\n",cosine);
//        #1 x = 'b0000001011000010; $fwrite(c,"%b\n",cosine);
//        #1 x = 'b0000001100100111; $fwrite(c,"%b\n",cosine);
        x = 'b0000000000000000; $fwrite(c,"%b\n",cosine);
        $readmemb("inputX.mem", mem);
        for(i = 1; i < 256; i=i+1) begin
            #1 x = mem[i]; $fwrite(c,"%b\n",cosine);
        end
        #5 $fclose(c); $finish;
    end
endmodule
