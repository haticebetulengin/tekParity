-- 365285 HATICE BETUL ENGİN
-- SAYISAL TASARIM LABORATUVARI DENEY1 ODEVI

Library IEEE;
Use IEEE.std_logic_1164.all;

Entity tekParity is
  Port (input:in std_logic_vector(6 downto 0);
    output_tek_parity:out std_logic_vector(7 downto 0));
  end entity;
  
Architecture mimari of tekParity is
  signal eslik: std_logic;
  Begin
    
    eslik <= input(0) xor input(1) xor input(2) xor input(3) xor input(4) xor input(5) xor input(6);
    output_tek_parity <= input & not eslik;
  end mimari; 
