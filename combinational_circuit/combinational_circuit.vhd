library ieee;
use ieee.std_logic_1164.all;


entity combinational_circuit is
	port(
		a, b, c: in bit;
		s1: out bit
	);
end combinational_circuit;

architecture main of combinational_circuit is
	
	signal and2in_sig_1: bit;
	signal and2in_sig_2: bit;
	signal and2in_sig_3: bit;
	
	component And2In is
	port(
		and_in_1, and_in_2: in bit;
		and_out: out bit
	);
	end component;

	component Or3In is
		port(
			or_in_1, or_in_2, or_in_3: in bit;
			or_out: out bit
		);
	end component;

begin
	u1: And2In port map(and_in_1 => a, and_in_2 => b, and_out => and2in_sig_1);
	u2: And2In port map(and_in_1 => b, and_in_2 => c, and_out => and2in_sig_2);
	u3: And2In port map(and_in_1 => a, and_in_2 => c, and_out => and2in_sig_3);
	u4: Or3In port map(or_in_1 => and2in_sig_1, or_in_2 => and2in_sig_2, or_in_3 => and2in_sig_3, or_out => s1);
end architecture main;