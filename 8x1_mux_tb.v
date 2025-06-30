module mux_8x1_tb();
reg [7:0] in;
reg [2:0] sel;
wire out;

mux_8x1 uut(in, sel, out); // Instantiate the mux

initial begin
    in = 8'b10101010;       // Set input pattern
    sel = 3'b000; #10       // Expect out = in[0] = 0
    sel = 3'b001; #10       // Expect out = in[1] = 1
    sel = 3'b010; #10       // Expect out = in[2] = 0
    sel = 3'b011; #10       // Expect out = in[3] = 1
    sel = 3'b100; #10       // Expect out = in[4] = 0
    sel = 3'b101; #10       // Expect out = in[5] = 1
    sel = 3'b110; #10       // Expect out = in[6] = 0
    sel = 3'b111; #10       // Expect out = in[7] = 1

    in = 8'b11110000;       // Change input pattern
    sel = 3'b000; #10       // Expect out = in[0] = 0
    sel = 3'b001; #10       // Expect out = in[1] = 0
    sel = 3'b010; #10       // Expect out = in[2] = 0
    sel = 3'b011; #10       // Expect out = in[3] = 0
    sel = 3'b100; #10       // Expect out = in[4] = 1
    sel = 3'b101; #10       // Expect out = in[5] = 1
    sel = 3'b110; #10       // Expect out = in[6] = 1
    sel = 3'b111; #10       // Expect out = in[7] = 1

    $finish;
end
endmodule
