	component button is
		port (
			button_external_connection_export : in  std_logic_vector(1 downto 0) := (others => 'X'); -- export
			clk_clk                           : in  std_logic                    := 'X';             -- clk
			led_external_connection_export    : out std_logic_vector(7 downto 0)                     -- export
		);
	end component button;

	u0 : component button
		port map (
			button_external_connection_export => CONNECTED_TO_button_external_connection_export, -- button_external_connection.export
			clk_clk                           => CONNECTED_TO_clk_clk,                           --                        clk.clk
			led_external_connection_export    => CONNECTED_TO_led_external_connection_export     --    led_external_connection.export
		);

