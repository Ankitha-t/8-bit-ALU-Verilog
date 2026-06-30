module alu_8bit (
    input  [7:0] A,
    input  [7:0] B,
    input  [2:0] opcode,
    
    output reg [7:0] result,
    output reg carry,
    output reg zero,
    output reg overflow
);

    reg [8:0] temp;

    always @(*) begin
        
        // Default values
        result   = 8'b00000000;
        carry    = 1'b0;
        overflow = 1'b0;
        temp     = 9'b000000000;

        case (opcode)

            // Addition: A + B
            3'b000: begin
                temp   = A + B;
                result = temp[7:0];
                carry  = temp[8];
                overflow = (A[7] == B[7]) && (result[7] != A[7]);
            end

            // Subtraction: A - B
            3'b001: begin
                result = A - B;
                carry  = (A < B);
                overflow = (A[7] != B[7]) && (result[7] != A[7]);
            end

            // AND
            3'b010: begin
                result = A & B;
            end

            // OR
            3'b011: begin
                result = A | B;
            end

            // XOR
            3'b100: begin
                result = A ^ B;
            end

            // NOT A
            3'b101: begin
                result = ~A;
            end

            // Left shift
            3'b110: begin
                result = A << 1;
                carry  = A[7];
            end

            // Right shift
            3'b111: begin
                result = A >> 1;
                carry  = A[0];
            end

            default: begin
                result = 8'b00000000;
            end

        endcase

        // Zero flag
        if (result == 8'b00000000)
            zero = 1'b1;
        else
            zero = 1'b0;

    end

endmodule