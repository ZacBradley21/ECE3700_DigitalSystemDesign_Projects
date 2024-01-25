module up_down_counter (
    input clk,
    input [7:0] a,
    input [7:0] b,
    input up,
    input dn,
    input rst,
    output reg [7:0] q
);
    always @(posedge clk) begin
        if (rst)
            q <= a;
        else begin
            if (up) begin
                q <= q + b; // Operation is carried out if no overflow is detected
                if (b > 255 - q) // Check for overflow
                    q <= q; // q will not change if overflow is detected
            end
            else if (dn) begin
                q <= q - b; // Operation is carried out if no overflow is detected
                if (b > q) // Check for overflow
                    q <= q; // q will not change if overflow is detected
            end
        end
    end


endmodule
