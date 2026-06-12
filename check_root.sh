#!/bin/bash
#I define a function here to check if my current user ID equals zero
check_if_root(){
#here I check the EUID which stands for Effective User ID
#this tells me if I am currently running the script with root privileges
#I added spaces after [[ and before ]] because bash requires them to evaluate the condition correctly
if [[ "${EUID}" -eq "0" ]]; then
 #if it is zero, I return 0 to indicate success or true
 return 0
 #if my user ID is anything else
 else
 #I return 1 to indicate failure or false
 return 1
 #I close the if statement inside my function
 fi
#I end the definition of my function
}
#now I run my function and check if it returns true
if check_if_root; then
 #if it succeeded, I print this message saying I am the root user
 echo "User is root!"
#if the function returned false
else
 #I print this message saying I do not have root privileges
 echo "User is not root!"
#finally I close this main conditional block
fi
