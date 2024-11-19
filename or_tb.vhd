
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity OR_Gate_TB is
    -- Test bench does not have ports
end OR_Gate_TB;

architecture tb of OR_Gate_TB is
    -- Declare signals for inputs and outputs
    signal in1 : STD_LOGIC := '0';
    signal in2 : STD_LOGIC := '0';
    signal or_out : STD_LOGIC;

    -- Component declaration for AND Gate
    component or2 is
        Port (
            in1,in2: in std_logic;
or_out: out std_logic
        );
    end component;
begin
    -- Instantiate the AND Gate
    UUT: or2 Port Map (
        in1 => in1,
        in2 => in2,
        or_out => or_out
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
end tb;
