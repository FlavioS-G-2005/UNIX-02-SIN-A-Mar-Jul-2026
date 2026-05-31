cd ~
# Changes the current directory to the user's home directory.

dd if=/dev/zero of=/tmp/swapex bs=1M count=50 
# Creates a 50MB file filled with zeros at /tmp/swapex.

dd if=/dev/sda of=/dev/sdb
# Clones the entire primary drive (sda) to the secondary drive (sdb).

cd ~/Documents
# Changes the current directory to the Documents folder in the home directory.

mv people.csv Work
# Moves the file 'people.csv' into the 'Work' directory.

ls Work    
# Lists the contents of the 'Work' directory.

mv numbers.txt letters.txt alpha.txt School  
# Moves the three specified text files into the 'School' directory.

ls School       
# Lists the contents of the 'School' directory.

ls 
# Lists the files and directories in the current working directory.

mv animals.txt zoo.txt   
# Renames 'animals.txt' to 'zoo.txt' (or moves it into a directory named zoo.txt).

ls 
# Lists the contents of the current directory again.

rm linux.txt
# Deletes the file named 'linux.txt'.

ls linux.txt
# Attempts to list 'linux.txt' to verify it was deleted.

rm Work
# Attempts to delete the 'Work' directory (will fail without -r).

rm -r Work
# Recursively deletes the 'Work' directory and all its contents.

ls Work
# Attempts to list 'Work' to verify it was deleted.

cp /etc/passwd .
# Copies the /etc/passwd file into the current directory.

grep sysadmin passwd  
# Searches for the string 'sysadmin' in the local 'passwd' file.

grep 'root' passwd
# Searches for the string 'root' in the local 'passwd' file.

grep '^root' /etc/passwd
# Searches for lines starting with 'root' in the /etc/passwd file.

cat alpha-first.txt     
# Displays the entire contents of the file 'alpha-first.txt'.

grep 'r$' alpha-first.txt
# Searches for lines ending with the letter 'r' in 'alpha-first.txt'.

cat red.txt
# Displays the contents of the file 'red.txt'.

grep 'r..f' red.txt
# Searches for lines with 'r', followed by any two characters, ending in 'f'.

grep 'r..d' red.txt
# Searches for lines with 'r', followed by any two characters, ending in 'd'.

grep '....' red.txt 
# Searches for lines containing at least four characters.

grep 'r..t' /etc/passwd
# Searches for lines with 'r', followed by any two characters, ending in 't'.

cat profile.txt
# Displays the contents of the file 'profile.txt'.

grep '[0-9]' profile.txt
# Searches for lines containing any numerical digit (0-9).

grep '[^0-9]' profile.txt
# Searches for lines containing any character that is not a numerical digit.

grep '[.]' profile.txt
# Searches for lines containing a literal period/dot character.

cat red.txt
# Displays the contents of the file 'red.txt' again.

grep 're*d' red.txt
# Searches for 'r', followed by zero or more 'e's, ending with 'd'.

grep 'r[oe]*d' red.txt
# Searches for 'r', followed by zero or more 'o's or 'e's, ending with 'd'.

grep 'z*' red.txt
# Searches for zero or more 'z's (matches every line since zero counts).

grep 'e*' red.txt
# Searches for zero or more 'e's (matches every line).

grep 'ee*' red.txt
# Searches for one or more 'e's.

su -  
# Switches to the root user and loads the root environment.

shutdown now         
# Immediately shuts down the system.

date 
# Displays the current system date and time.

shutdown 01:51        
# Schedules the system to shut down at 01:51 AM.

shutdown +1 "Goodbye World!"        
# Schedules a shutdown in 1 minute and broadcasts the message to users.

ifconfig            
# Displays network interface configuration and information.

ping -c 4 192.168.1.2          
# Sends exactly 4 ping requests to the IP address 192.168.1.2.

ping -c 4 192.168.1.3     
# Sends exactly 4 ping requests to the IP address 192.168.1.3.

exit    
# Logs out of the current shell or switches back to the previous user.

ps
# Lists the running processes for the current shell session.

ps -e
# Lists all running processes on the entire system.

ps -ef
# Lists all running processes on the system with detailed formatting.

sudo apt-get update   
# Updates the local list of available packages from the repositories.

apt-cache search cow   
# Searches the package cache for software containing 'cow'.

sudo apt-get install cowsay  
# Installs the 'cowsay' package using root privileges.

cowsay 'NDG Linux Unhatched'         
# Prints an ASCII art cow saying 'NDG Linux Unhatched'.

sudo apt-get update    
# Updates the package lists from the repositories again.

sudo apt-get upgrade
# Installs the newest versions of all installed packages on the system.

sudo apt-get purge cowsay  
# Completely uninstalls 'cowsay' and removes its configuration files.

passwd   
# Prompts the current user to change their password.

passwd -S sysadmin                                        
# Displays the password status (e.g., active, locked) for the user 'sysadmin'.

su root  
# Switches to the root user without changing the current environment.

passwd sysadmin        
# Allows the root user to change the password for 'sysadmin'.

exit  
# Exits the root shell and returns to the previous user session.

cd ~/Documents
# Changes directory to the Documents folder in the user's home directory.

cat food.txt          
# Displays the contents of the file 'food.txt'.

cat food.txt > newfile1.txt
# Reads 'food.txt' and writes its contents to 'newfile1.txt', overwriting it.

cat newfile1.txt       
# Displays the newly written contents of 'newfile1.txt'.

echo "Hello"       
# Prints the string "Hello" to the terminal.

cat newfile1.txt   
# Displays the contents of 'newfile1.txt' again.

echo "I like food." > newfile1.txt
# Overwrites 'newfile1.txt' with the string "I like food.".

cat newfile1.txt  
# Displays the updated contents of 'newfile1.txt'.

echo "This food is good." >> newfile1.txt
# Appends the string "This food is good." to the end of 'newfile1.txt'.

cat newfile1.txt    
# Displays the contents of 'newfile1.txt', which now contains two lines.

vi newfile.txt
# Opens the file 'newfile.txt' for editing in the vi text editor.