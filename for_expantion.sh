#!/bin/bash

for file in example_file*; do
# ^ Starts a "for" loop. It looks in the current directory for any files or folders 
# that start with "example_file" (the * is a wildcard meaning "anything after").
# For each matching file it finds, it assigns that file's name to the variable "file" 
# and runs the code inside the loop.

    if [[ "${file}" == "example_file1" ]]; then
    # ^ Starts an "if" statement. It checks if the current value of the "file" variable 
    # is exactly equal to the string "example_file1".

        echo "Skipping the first file"
        # ^ If the condition above is true, it prints this message to the screen.

        continue
        # ^ The "continue" command is a special keyword in loops. It means "stop executing 
        # the rest of the code in this specific iteration and immediately jump back 
        # to the top of the loop for the next item."

    fi
    # ^ Marks the end of the "if" statement block.

    echo "${RANDOM}" > "${file}"
    # ^ This line only runs if the file was NOT "example_file1" (because of the "continue").
    # $RANDOM is a built-in bash variable that generates a random integer between 0 and 32767.
    # The ">" operator takes that random number and writes it into the current "${file}", 
    # completely overwriting whatever was previously inside it.

done
# ^ Marks the end of the "for" loop. Once it has processed all files matching "example_file*", 
# the loop finishes and the script ends.
