library verilog;
use verilog.vl_types.all;
entity combinational_circuit is
    port(
        a               : in     vl_logic;
        b               : in     vl_logic;
        c               : in     vl_logic;
        s1              : out    vl_logic
    );
end combinational_circuit;
