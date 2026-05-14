umask
# Checks the current bitmask to see what permissions will be subtracted from new files.

touch archivo1
# Creates a test file to see which default permissions the system assigns.

mkdir directorio1
# Generates an initial folder to evaluate default access and execution permissions.

ls -l
# Lists the content with full technical detail (permissions, owners, and timestamps).

umask 027
# Tightens restrictions: new files will be 640 (rw- for owner, r-- for group, nothing for others).

touch archivo2
# Creates a second file to confirm that the new 027 mask is being applied correctly.

mkdir diretorio2
# Creates another folder to verify that the group has read access while others have none.

sudo apt-get update
# Refreshes the package list from remote repositories using root privileges.

apt-get update
# Attempts to update the list; this will fail without 'sudo' due to insufficient permissions.

apt-get upgrade
# Installs the latest available versions of all currently installed software.

apt-get install acl
# Installs Access Control List support for more granular permission management.

chown -R $(whoami) .
# Takes ownership of everything in the current directory, assigning it to the active user.

setfacl -bnR .
# Wipes all extended ACL rules in one go, reverting to standard UNIX permissions.

umask 027
# Ensures the 027 security policy remains active after the cleanup.

ls -l
# Another quick visual check to ensure owners and permissions are in order.

umask 022
# Reverts to the classic mask: 644 for files and 755 for folders (world-readable).

whoami
# Confirms the identity of the user currently running the session.

echo "Hola" > mi_archivo
# Writes "Hola" into a new file to serve as a write-operation test.

ls -l mi_archivo
# Takes a close look at the specific attributes of 'mi_archivo'.

ls -l
# Performs a quick audit of the current workspace.

useradd -m -s /usr/bin/zsh luna
# Registers 'luna' in the system, creates a home directory, and sets zsh as the shell.

chown luna mi_archivo
# Hands over the ownership of 'mi_archivo' to the user 'luna'.

ls -l
# Verifies that the ownership change was successfully applied.

groups
# Displays the groups the current user belongs to.

groupadd grupo_test
# Registers a new group named 'grupo_test' in the system.

groups
# Checks if the current user was added automatically (spoiler: they weren't).

touch comun
# Creates a neutral file to experiment with group permissions.

ls -l comun
# Checks who the owner is and which group is assigned to this new file.

cat /etc/group
# Peeks at the master group file to verify that 'grupo_test' exists.

useradd -m -s /usr/bin/zsh ariel
# Creates user 'ariel' with a personal home directory and zsh shell.

usermod -a -G grupo_test ariel
# Adds 'ariel' to 'grupo_test' as a supplementary group.

chgrp grupo_test comun
# Updates the group associated with 'comun' to 'grupo_test'.

ls -l comun
# Confirms that 'grupo_test' now has rights over the file.

chown luna:grupo_test mi_archivo
# A "combo" command: changes both the owner to 'luna' and the group to 'grupo_test'.

ls -l mi_archivo
# Final verification of the dual ownership on 'mi_archivo'.

mkdir -p proyecto/sub
# Builds a nested folder structure in a single shot.

touch proyecto/readme proyecto/sub/datos
# Populates the new structure with files to work with.

chown -R luna:grupo_test proyecto
# Recursively applies 'luna' as owner and 'grupo_test' as group to the entire 'proyecto' tree.

ls -lR proyecto
# Performs a deep recursive inspection to ensure every file reflects the new ownership.

id 
#Displays your system "ID card": reveals your UID (User ID), GID (Group ID), and all groups you currently belong to.

cat /etc/passwd | head -10
# Takes a quick peek at the first 10 entries of the user database to avoid cluttering the terminal.

cat /etc/passwd 
# Dumps the entire list of registered accounts, showing both human users and background system services.

groups 
# Lists out the names of all the groups the current user is a member of, plain and simple.

id -u
# Strips away the extra details to print strictly your numeric User ID (UID) — perfect for scripting.

id -g
# Extracts only the numeric ID of your primary group (GID).

id -G
# Spits out a raw, space-separated list of all the numeric Group IDs (GIDs) you belong to.

cat /etc/group | grep codespace
# Searches the system's master group file specifically for any entries containing the word 'codespace', filtering out all the other noise.

mkdir /homej/proyecto_unix
#

ls -la /home/j/proyecto_unix
#

# Create a new directory named 'proyecto_unix' inside the user's home directory
mkdir ~/proyecto_unix/

# List all contents of the new directory in long format (-l), including hidden files (-a)
ls -la ~/proyecto_unix/

# groupadd [options] group_name
# Create a simple group
sudo groupadd developers
sudo groupadd -g 2000 operations
# System group (GID < 1000)
sudo groupadd --system web_services
# Specific GID

# Verify that they were created (using basic grep, requires escaping the pipe \|)
grep "developers\|operations\|web_services" /etc/group

# Verify using -E (Extended regular expressions, cleaner syntax)
grep -E "developers|operations|web_services" /etc/group

# View main options
groupadd --help
grep "GID_MIN\|GID_MAX\|SYS_GID" /etc/login.defs
# Search for the minimum, maximum, and system Group ID configurations
# The '\|' symbol acts as an "OR" to search for multiple specific terms at once
grep "GID_MIN\|GID_MAX\|SYS_GID" /etc/login.defs

# GID_MIN 1000
# The lowest Group ID (GID) automatically assigned when creating a standard user group.

# GID_MAX 60000
# The highest Group ID (GID) automatically assigned when creating a standard user group.

# SYS_GID_MIN 101
# The lowest Group ID reserved for system groups (typically used for services, apps, and background processes).

# SYS_GID_MAX 999
# The highest Group ID reserved for system groups.

# SUB_GID_MIN 100000
# The starting ID for subordinate groups (mostly used for Docker/Podman containers and user namespaces to map permissions).

# SUB_GID_MAX 600100000
# The ending ID for subordinate groups.

# addgroup [options] group_name
# Create groups with addgroup
sudo addgroup design
sudo addgroup --gid 2100 marketing
sudo addgroup --system web_cache

# Verify (Note: I fixed the syntax and typos so this command works correctly)
grep "design\|marketing\|web_cache" /etc/group

# Alternatively, using -E for cleaner syntax:
# grep -E "design|marketing|web_cache" /etc/group
# Create a temporary group for the demo
sudo groupadd temporary_group

# Add the root user to the temporary group
sudo usermod -aG temporary_group root

# Verify the root user's identity and groups
id root # has temporary_group
# Verify the root user's identity and groups
id root # has temporary_group

# Now the MISTAKE: usermod without -a
usermod -G developers root

# This REMOVES all secondary groups except developers
id root # lost all other groups