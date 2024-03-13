entity gates is
    port(
        a, b, c :  in bit;
        s1, s2, s3, s4, s5, s6, s7, s8, s9, s10, s11, s12, s13, s14, s15, s16, s17, s18, s19, s20, s21  :     out bit
    );
end entity gates;

architecture main of gates is

begin
	-- PORTA OR
	s1 <= a or b;
	-- PORTA AND	
	s2 <= a and b;
	
	-- IDENTIDADE
	s3 <= a or '0';
	s4 <= a and '1';
	s5 <= not(not(a));
	
	-- COMUTATIVIDADE
	s6 <= a or b;
	s7 <= b or a;
	s8 <= a and b;
	s9 <= b and a;
	
	-- ASSOCIATIVIDADE
	s10 <= a or (b or c);
	s11 <= (a or b) or c;
	s12 <= a and (b and c);
	s13 <= (a and b) and c;
	
	-- DISTRIBUTIVA
	s14 <= a and (b or c);
	s15 <= (a and b) or (a and c);
	s16 <= a or (b and c);
	s17 <= (a or b) and (a or c);
	
	-- MORGAN
	s18 <= not(a and b);
	s19 <= not(a) or not(b);
	s20 <= not(a or b);
	s21 <= not(a) and not(b);
	
	
end architecture main;
