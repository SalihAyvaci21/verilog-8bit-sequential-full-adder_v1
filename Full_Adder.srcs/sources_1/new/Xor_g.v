
module Xor_g(
    input i_a,
    input i_b,
    input i_k,
    output o_c
   );

    assign o_c = i_a ^ i_b ^ i_k;
    
endmodule
