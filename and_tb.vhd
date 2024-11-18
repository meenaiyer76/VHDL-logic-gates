library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity AND_Gate_TB is
    -- Test bench does not have ports
end AND_Gate_TB;

architecture Structural of AND_Gate_TB is
    -- Declare signals for inputs and outputs
    signal in1 : STD_LOGIC := '0';
    signal in2 : STD_LOGIC := '0';
    signal and_out : STD_LOGIC;

    -- Component declaration for AND Gate
    component and2 is
        Port (
            in1,in2: in std_logic;
and_out: out std_logic
        );
    end component;
begin
    -- Instantiate the AND Gate
    UUT: and2 Port Map (
        in1 => in1,
        in2 => in2,
        and_out => and_out
    );

    -- Stimulus process
    process
    begin
        -- Apply test cases
        in1 <= '0'; in2 <= '0'; wait for 1 ns;
        in1 <= '0'; in2 <= '1'; wait for 1 ns;
        in1 <= '1'; in2 <= '0'; wait for 1 ns;
        in1 <= '1'; in2 <= '1'; wait for 1 ns;

        -- End simulation
        wait;
    end process;
end Structural;

