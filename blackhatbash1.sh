#!/bin/bash

bash --version
# Displays the currently installed version of the Bash shell.

env
# Prints the list of all environment variables currently exported in the session.

echo ${SHELL}
# Outputs the file path of the current user's default login shell.

echo ${RANDOM}
# Generates and prints a random integer between 0 and 32767.

echo ${UID}
# Displays the numeric User ID of the currently logged-in user.

echo ${OSTYPE}
# Prints a string representing the operating system type where bash is executing.

man ls
# Opens the system manual page for the 'ls' command detailing its usage.

ls --help
# Displays a quick, built-in summary of options and syntax for the 'ls' command.

ps -e -f
# Shows a full-format listing of all currently running processes on the system.

ps -ef
# Identical to 'ps -e -f', showing a full-format list of all active processes.

df --human-readable
# Displays disk space usage for mounted filesystems in an easy-to-read format (e.g., MB, GB).

bash -r blackhatbash1.sh
# Executes the script in restricted bash mode, limiting certain system capabilities.

bash -x blackhatbash1.sh
# Executes the script in debug mode, printing each command before it runs.

set -x
# Enables shell debugging in the current session, printing commands as they execute.

set +x
# Disables shell debugging, stopping the trace output of executing commands.