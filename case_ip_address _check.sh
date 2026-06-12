#!/bin/bash
IP_ADDRESS="${1}"
# ^ Creates a variable named IP_ADDRESS and assigns it the value of "${1}".
# In Bash, "${1}" represents the first argument passed to the script via the command line 
# (for example, if you run ./script.sh 192.168.1.5, then IP_ADDRESS becomes "192.168.1.5").
case ${IP_ADDRESS} in
# ^ Starts a "case" block, which acts like a multi-way branch (or a switch statement).
# It tells the script to evaluate the value stored in the "IP_ADDRESS" variable 
# against a series of different patterns defined below.
192.168.*)
# ^ Defines the first pattern to match. The "*" acts as a wildcard.
# This means: "if the IP address starts exactly with '192.168.', followed by anything else..."
    echo "Network is 192.168.x.x"
    # ^ If the pattern above matches, this message is printed to the screen.
    ;;
    # ^ The double semicolon ";;" marks the end of the instructions for this specific case.
    # It tells Bash to stop looking and immediately jump to the end of the entire "case" structure.
10.0.*)
# ^ Defines the second pattern to match. 
# This means: "if the IP address starts exactly with '10.0.', followed by anything else..."
    echo "Network is 10.0.x.x"
    # ^ If this second pattern matches, this message is printed to the screen.
    ;;
    # ^ Ends the instructions for this second case block.
*)
# ^ This is the default or catch-all pattern (like an "else" statement). 
# Since "*" matches anything, this block triggers if the input failed to match any of the previous patterns.
    echo "Could not identify the network"
    # ^ Prints a message indicating that the IP address belongs to an unrecognized network.
    ;;
    # ^ Ends the instructions for the catch-all case block.
esac
# ^ Marks the official end of the "case" structure ("esac" is just "case" spelled backwards).
# The script will resume normal execution from the next line onward.
#192.168.1.1 
#192.168.hola
#10.0.hola
#8.8.8.8