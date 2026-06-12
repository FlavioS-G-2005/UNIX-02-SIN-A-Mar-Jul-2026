#!/bin/bash

FILE="output.txt"
# ^ Creates a variable named FILE and assigns it the value "output.txt".

touch "${FILE}"
# ^ The 'touch' command creates the file "output.txt" if it doesn't exist. 
# If it already exists, it just updates its timestamp. 
# Crucially, if it creates a new file, that file will be completely empty (0 bytes).

until [[ -s "${FILE}" ]]; do
# ^ Starts an "until" loop. 
# The condition [[ -s ... ]] checks if the file exists AND has a size greater than zero.
# An "until" loop runs *as long as* the condition is FALSE. 
# So, this loop will keep running until the file actually contains some data.

    echo "${FILE} is empty..."
    # ^ Prints a message to the screen stating that the file is currently empty.

    echo "Checking again in 2 seconds..."
    # ^ Prints a message indicating the script will wait 2 seconds before checking again.

    sleep 2
    # ^ Pauses the execution of the script for exactly 2 seconds.

done
# ^ Marks the end of the "until" loop. If the file is still empty, 
# it jumps back to the 'until' line and repeats.

echo "${FILE} appears to have some content in it!"
# ^ Once data is written to the file, the condition [[ -s ... ]] becomes TRUE.
# The "until" loop breaks, the script reaches this line, prints the success message, and finishes.