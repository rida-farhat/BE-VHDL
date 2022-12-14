library ieee;
Use ieee.std_logic_1164.all;
USE ieee.numeric_std.all;

entity anemo is
port (
	HZ : in std_logic;
	clk_50 : in std_logic;
	--clk_50 : in std_logic;
	continu : in std_logic;
	frq : in integer range 0 to 255;
	start_stop : in std_logic;
	raz_n : in std_logic;
	data_anemometre : out std_logic_vector(7 downto 0);
	data_valid : out std_logic
	);
end entity anemo;

architecture arch_anemo of anemo is

begin


process(clk_50, HZ)
begin
if raz_n = '0' then
	data_valid <= '0';
	data_anemometre <= "00000000";

elsif rising_edge(HZ) then 
	if continu = '0' then
		--report "The value of 'HZ' is " & std_logic'image(HZ);--zid stop
		if start_stop = '0' then
			data_valid <= '0';
		else 
			data_valid <= '1';
			data_anemometre <= std_logic_vector(to_unsigned(frq,8));
			--report "The value of 'data_valid' is " & std_logic'image(data_valid);--zid stop

		end if;

	else
	data_anemometre <= std_logic_vector(to_unsigned(frq,8));
	data_valid <= '1';
	end if;
end if;
end process;

end architecture arch_anemo;
		
