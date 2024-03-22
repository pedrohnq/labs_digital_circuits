entity Or3In is
	port(
		or_in_1, or_in_2, or_in_3: in bit;
		or_out: out bit
	);
end Or3In;

architecture behav of Or3In is

begin
	or_out <= or_in_1 or or_in_2 or or_in_3;
end architecture behav;