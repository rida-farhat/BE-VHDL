library ieee;
Use ieee.std_logic_1164.all;
USE ieee.numeric_std.all;

entity frq is
port (
	clk : in std_logic;
	hz : out std_logic);
end entity frq;



architecture arch_frq of frq is
signal tmp: std_logic;
signal cnt: integer := 0;

begin

process (clk) is
begin

if rising_edge(clk) then
	cnt <= cnt + 1 ;
	if cnt = 10 then
		tmp <= not tmp;
		cnt <= 0;
	end if;
end if;

hz <= tmp;

end process;
end architecture arch_frq;