library ieee;
Use ieee.std_logic_1164.all;
USE ieee.numeric_std.all;

entity diviseur2 is
port (
	clk_50 : in std_logic;
	--continu : in std_logic;
	hz : out std_logic);
end entity diviseur2;



architecture arch_frq of diviseur2 is
signal tmp: std_logic :='0';
--signal cnt: integer := 0;

begin

process (clk_50) is
variable cnt: integer := 0;

begin
--if continu = '1' then
	if rising_edge(clk_50) then
		cnt := cnt + 1 ;
		--report "The value of 'cnt' is " & integer'image(cnt);--zid stop
		if cnt = 25000000 then
			tmp <= not tmp;
			cnt := 0;
		end if;
	end if;
	hz <= tmp;

--else hz <= clk_50;

--hz <= tmp;

end process;
end architecture arch_frq;