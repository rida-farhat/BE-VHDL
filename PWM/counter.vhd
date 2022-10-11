library ieee;
Use ieee.std_logic_1164.all;
USE ieee.numeric_std.all;

entity counter is
port (
	clk, rst : in std_logic;
	freq : in integer;
	count : out integer);
end entity counter;



architecture arch_counter of counter is
signal cnt: integer := 0;

begin
process (clk,rst) is

begin
if rst = '1' then
	cnt <= 0;
elsif rising_edge(clk) then
	cnt <= cnt + 1;
	if cnt > freq then
		cnt <= 0;
	end if;
end if;

count <= cnt;

end process;
end architecture arch_counter;