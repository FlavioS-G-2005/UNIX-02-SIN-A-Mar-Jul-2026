#!/bin/bash

DIR_NAME="dir_test"

# Usamos -p para que no lance un error si el directorio ya existe
mkdir -p "${DIR_NAME}"

# Se añadieron los espacios obligatorios dentro de los corchetes [[ ... ]]
if [[ -f "${DIR_NAME}" ]] || [[ -d "${DIR_NAME}" ]]; then
    echo "${DIR_NAME} is either a file or a directory."
fi
