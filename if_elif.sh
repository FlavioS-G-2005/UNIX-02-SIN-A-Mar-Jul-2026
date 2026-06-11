#!/bin/bash


USER_INPUT="${1}"
# Assigns the first command-line argument passed to the script to the variable USER_INPUT.

if [[ -z "${USER_INPUT}" ]]; then
# Checks if the string length of USER_INPUT is zero (meaning no argument was provided).

    echo "You must provide an argument!"
    # Prints a warning message to the terminal.

    exit 1
    # Stops the script and exits with a status code of 1, indicating an error.

fi
# Closes the first 'if' conditional block.

if [[ -f "${USER_INPUT}" ]]; then
# Checks if the value stored in USER_INPUT exists and is a regular file.

    echo "${USER_INPUT} is a file."
    # Prints a message confirming that the input is a file.

elif [[ -d "${USER_INPUT}" ]]; then
# If it's not a file, checks if the value stored in USER_INPUT exists and is a directory.

    echo "${USER_INPUT} is a directory."
    # Prints a message confirming that the input is a directory.

else
# If the input exists but is neither a regular file nor a directory (or if it doesn't exist at all).

    echo "${USER_INPUT} is not a file or a directory."
    # Prints a message stating that it is neither.

fi
# Closes the second 'if' conditional block.