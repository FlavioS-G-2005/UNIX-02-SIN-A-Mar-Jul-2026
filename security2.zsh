id
#Displays the current user's UID (User ID), GID (Primary Group ID), and all groups they belong to.
id -gn
#Prints only the name of the current user's primary group.
touch ~/test_grupo_heredado.txt
#Creates an empty file named test_grupo_heredado.txt in the user's home directory (or updates its timestamp if it already exists).
ls -la ~/test_grupo_heredado.txt
#Lists detailed information (permissions, owner, group, size, and modification date) for the specified file, including hidden attributes.
echo "Grupo actual :$(id -gn)"
#Prints a message displaying the name of the current user's active primary group.
touch ~/antes_de_newgrp.txt
#Creates an empty file named antes_de_newgrp.txt in the user's home directory before any group changes are made.
ls -la ~antes_de_newgrp.txt
#Displays the detailed attributes, including owner and group ownership, specifically for the newly created file.
newgrp desarrolladores
#Changes the user's current primary group to "desarrolladores" for the remainder of the terminal session.
## Installing newgrp package
apt update
apt upgrade
apt install util-linux-extra
## Creating group "desarrolladores"
addgroup desarrolladores
## Using newgrp with "desarrolladores"
newgrp desarrolladores
## Checking if it worked displaying group name
id -gn
echo "Nuevo grupo activo: $(id-gn)"
## Creating a file into the subshell
touch ~/dentro_de_desarrolladores.txt
ls -la ~/dentro_de_desarrolladores.txt
## Creating a new dir
mkdir -p ~/proyecto_dev/src
ls -la ~/
proyecto_dev/ tiene grupo 'desarrolladores'
su luna
Switches the current terminal session to the user account named "luna".

exit
Closes the current shell session or logs out of the active user account, returning to the previous user.
groupadd grupo_restringido
Creates a new system group named "grupo_restringido".
usermod -aG grupo_restringido luna
Appends the user "luna" to the secondary group "grupo_restringido" without removing them from their existing groups.
useradd luna
Attempts to create a new user account named "luna" without generating a default home directory.
useradd -m luna
Attempts to create a new user named "luna" and automatically generate their home directory (which fails here because the user already exists).
