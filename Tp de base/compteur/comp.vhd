library ieee;
Use ieee.std_logic_1164.all;
use IEEE.numeric_std.all;

entity comp is
 
port ( 
	Clk : in std_logic;
	c : in std_logic;
	rst : in std_logic;
	load : in std_logic;
	data : in unsigned(3 downto 0);
	Q : out unsigned(3 downto 0));
end entity comp;


architecture arch_comp of comp is
signal p : unsigned(3 downto 0);
begin

process(Clk,rst) is
begin
	if rst = '1' then
		p <= "0000";
    elsif rising_edge(Clk) then
		if c = '1' then
			p <= p + 1 ;
			if p > "1000" then 
				p <= "0000";
			end if;
		elsif c = '0' and p > "0000" then 
				p <= p - 1 ;
		end if;
		if load = '1' then
			p <= data;
			Q <= p;
		end if;
	end if;
	
		Q <= p;

end process;
end architecture arch_comp;