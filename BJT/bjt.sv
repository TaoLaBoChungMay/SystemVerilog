module BJT (
    input logic B, C,
    output logic E
);

    // assign E = (B == 1 ) ? C : 1'bz;
    always_comb begin 
        if (B== 1)
            E = C;
        else
            E = 1'bz;  
    end
         
endmodule