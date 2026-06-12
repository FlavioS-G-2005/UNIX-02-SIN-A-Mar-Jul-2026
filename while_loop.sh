#!/bin/bash

SIGNAL_TO_STOP_FILE="stoploop"
# ^ Creates a variable named SIGNAL_TO_STOP_FILE and assigns it the value "stoploop".
# This will be the name of the file the script will be looking for.

while [[ ! -f "${SIGNAL_TO_STOP_FILE}" ]]; do
# ^ Starts a "while" loop. 
# The condition [[ ! -f ... ]] checks if the file DOES NOT exist.
# "-f" checks if it is a regular file, and "!" inverts the condition (NOT).
# Therefore, the loop will run as long as the "stoploop" file DOES NOT exist in the directory.

    echo "The file ${SIGNAL_TO_STOP_FILE} does not yet exist..."
    # ^ Prints a message to the screen saying that the file (displaying its name) doesn't exist yet.

    echo "Checking again in 2 seconds..."
    # ^ Prints a message to the screen indicating that it will check again in 2 seconds.

    sleep 2
    # ^ Pauses the execution of the script for 2 seconds before continuing.

done
# ^ Marks the end of the "while" loop block. If the file still does not exist, 
# the script will jump back to the "while" line and repeat the process.

echo "File was found! Exiting..."
# ^ Once the "stoploop" file is created, the "while" loop condition becomes false.
# The script exits the loop, reaches this line, prints that the file was found

