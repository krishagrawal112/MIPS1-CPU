module load_store(

    input logic clk,
    input logic [31:0] reg0,
    input logic [31:0] reg1,
    
    
    
    input logic regfilewriteenable,
    output logic [3:0] regbyteenable,
    output logic [4:0] regfileaddr
    output logic [31:0] regoutput

    input logic waitrequest,
    input logic [31:0] readdata,
    output logic [31:0] address,
    output logic write,
    output logic read,
    output logic [31:0] writedata,
    output logic [3:0] byteenable

);

    logic [5:0] opcode;
    logic [4:0]
    logic [4:0]
    logic [15:0]
 
    assign opcode = instruction[31:26];

    always_comb begin

    end

    always_ff @ (posedge clk) begin
        
    end


endmodule