module up_down_counter (
    input clk,
    input signed [7:0] a,
    input signed [7:0] b,
    input up,
    input dn,
    input rst,
    output reg signed [7:0] q
);
wire signed [7:0] overflow;
assign overflow = (up) ? (q + b) : (q - b);
    always @(posedge clk) begin
        if (rst)
            q <= a;
        else begin
            if (up) begin
                if (q[7] != b[7] || q[7] == overflow[7]) begin //check if either of these statements are true then give q overflow
                    q <= overflow;
                end
            end
            else if (dn) begin
                if (q[7] == b[7] || q[7] == overflow[7]) begin //make sure these statements are true before giving q overflow
                    q <= overflow;
            end
        end
    end
    end

endmodule
