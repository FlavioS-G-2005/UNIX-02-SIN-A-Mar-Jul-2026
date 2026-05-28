id
#Displays the current user's UID (User ID), GID (Primary Group ID), and all groups they belong to.
id -gn
#Prints only the name of the current user's primary group.
touch ~/test_grupo_heredado.txt
#Creates an empty file named test_grupo_heredado.txt in the user's home directory (or updates its timestamp if it already exists).
ls -la ~/test_grupo_heredado.txt
#Lists detailed information (permissions, owner, group, size, and modification date) for the specified file, including hidden attributes.
echo "Grupo actual :$(id -gn)"
#
touch ~/antes_de_newgrp.txt
#
ls -la ~antes_de_newgrp.txt
#
newgrp desarrolladores
#
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