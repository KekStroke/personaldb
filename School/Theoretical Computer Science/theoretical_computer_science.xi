Topics and Material to Refresh .
    Finite State Automata .
    . DFAs, NFAs, regular expressions are all equivalent.
    . We can prove that languages are not regular by using 
      |pumping lemma| and closure properties.
    Pushdown Automata [#2] .
    . |Operates like NFA, except can push and pop symbols from the top|
      |of stack.| 
    . Context free grammars[#1] is equivalent to PDA.
    
    . Elements:
      * Rule: Variable -> string of variables and terminals;
      * Variables: Left-hand side symbols;
      * Terminals: Symbols only at right-hand side;
      * Start Variable: Top left symbol.

    . Grammars generates strings:
        * Write down start variable;
        * Replace any variable according to a rule;
          # Repeat until only terminal remain;
        * Result is generated string;
        * L(G) is the language of all generated strings.


Reference .
. [1#] [https://youtu.be/KAySmSEGc9U?list=PLUl4u3cNGP60_JNv2MmK3wkOt9syvfQWY&t=3608]
. [2#] [https://youtu.be/m9eHViDPAJQ?list=PLUl4u3cNGP60_JNv2MmK3wkOt9syvfQWY&t=2126]