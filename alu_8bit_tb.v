`timescale 1ns/1ps

module alu_8bit_tb;

    // Inputs to the ALU
    reg [7:0] A;
    reg [7:0] B;
    reg [2:0] opcode;

    // Outputs from the ALU
    wire [7:0] result;
    wire carry;
    wire zero;
    wire overflow;

    // Design Under Test (DUT)
    alu_8bit dut (
        .A(A),
        .B(B),
        .opcode(opcode),
        .result(result),
        .carry(carry),
        .zero(zero),
        .overflow(overflow)
    );

        // Apply test cases
    initial begin

        // Test Case 1: Addition (10 + 20 = 30)
        A = 8'd10;
        B = 8'd20;
        opcode = 3'b000;
        #10;

        // Test Case 2: Subtraction (20 - 10 = 10)
        A = 8'd20;
        B = 8'd10;
        opcode = 3'b001;
        #10;

        // Test Case 3: AND
        A = 8'b10101010;
        B = 8'b11001100;
        opcode = 3'b010;
        #10;

        // Test Case 4: OR
        opcode = 3'b011;
        #10;

        // Test Case 5: XOR
        opcode = 3'b100;
        #10;

        // Test Case 6: NOT A
        opcode = 3'b101;
        #10;

        // Test Case 7: Left Shift
        A = 8'b01000001;
        opcode = 3'b110;
        #10;

        // Test Case 8: Right Shift
        A = 8'b10000010;
        opcode = 3'b111;
        #10;

        $stop;

    end

endmodule