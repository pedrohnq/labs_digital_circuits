entity And2In is
	port(
		and_in_1, and_in_2: in bit;
		and_out: out bit
	);
end And2In;


architecture behav of And2In is

begin
	and_out <= and_in_1 and and_in_2;
end architecture behav;