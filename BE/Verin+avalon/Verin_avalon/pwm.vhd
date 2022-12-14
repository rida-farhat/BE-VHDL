library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_unsigned.all;



entity pwm is

port (
clk, raz_n: in std_logic;
freq, duty : in std_logic_vector (31 downto 0);
pwm_out : out std_logic
);
end entity;



ARCHITECTURE arch_pwm of pwm IS

-- signaux relatifs au circuit gestion pwm_nano
signal counter : std_logic_vector (31 downto 0);
signal pwm_nano_on : std_logic;
BEGIN



--0000000000000000000000000000000000000000000000000000
-- circuit de gestion de la pwm_nano
--****************************************************
-- fixe la fréquence de la pwm_nano
--*****************************************************
divide: process (clk, raz_n)
begin

    if raz_n = '0' then
		counter <= (others => '0');
    elsif clk'event and clk = '1' then
			if counter >= freq then
				counter <= (others => '0');
			else
       counter <= counter + 1;
			end if;
    end if;
end process divide;
--******************************************************
--******************************************************
--génère le rapport cyclique
--******************************************************
    compare: process (clk, raz_n)
    begin
    if raz_n = '0' then
       pwm_nano_on <= '0';
	 elsif clk'event and clk = '1' then
		if counter >= duty then
			pwm_nano_on <= '0';
		else
			pwm_nano_on <= '1';
		end if;
    end if;
end process compare;
--*******************************************************
--0000000000000000000000000000000000000000000000000000000
    pwm_out <= pwm_nano_on;
--**************************************************************
END arch_pwm ;