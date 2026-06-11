#!/bin/bash


# This function checks if the current user ID equals zero.
# (This is your original comment explaining the function's purpose).

check_if_root() {
# ❶ Defines a new function named 'check_if_root'.

    if [[ "${EUID}" -eq "0" ]]; then
    # ❷ Checks if the Effective User ID (EUID) is numerically equal (-eq) to 0 (root's ID).
    # Spaces were added inside the brackets [[ ... ]] to prevent syntax errors.

        return 0
        # Returns an exit status of 0, which means "success" or "true" in Bash.

    else
    # If the condition above is not met (EUID is not 0).

        return 1
        # Returns an exit status of 1, which means "failure" or "false" in Bash.

    fi
    # Closes the 'if' conditional block inside the function.

}
# Closes the function definition.

if check_if_root; then
# Calls the 'check_if_root' function. If it returns 0 (success), this condition is true.

    echo "User is root!"
    # Prints a message to the terminal confirming the user is executing as root.

else
# If the function returns a non-zero exit status (like 1, indicating failure).

    echo "User is not root!"
    # Prints a message to the terminal stating the user is not root.

fi
# Closes the main 'if' conditional block.