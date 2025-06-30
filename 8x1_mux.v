module mux_8x1(in, sel, out);
input [7:0] in;         // 8 input lines
input [2:0] sel;        // 3-bit select line
output reg out;         // output is 1-bit (selected input)

always @(*) begin
    case(sel)
        3'b000: out = in[0]; // select in[0]
        3'b001: out = in[1]; // select in[1]
        3'b010: out = in[2]; // and so on...
        3'b011: out = in[3];
        3'b100: out = in[4];
        3'b101: out = in[5];
        3'b110: out = in[6];
        3'b111: out = in[7]; // select in[7]
        default: out = 0;    // just a safety default
    endcase
end
endmodule
