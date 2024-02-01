#!/bin/bash

if [[ $# -eq 0 ]]; then
    echo '[✘] No arguments supplied'
    echo '[!] Usage: ./clouduploader <container-name> <filename1>'
    exit 1
elif [[ $# -eq 1 ]]; then
    echo '[!] Too few arguments!'
    echo '[!] Usage: ./clouduploader <container-name> <filename1>'
    exit 1
elif [[ $# -ge 3 ]]; then
    echo '[!] Too many arguments'
    echo '[!] Usage: ./clouduploader <container-name> <filename1>'
    exit 1
elif [[ ! -f $2 ]]; then
    echo '[✘] The file does not exist!'
    exit 1
else
    does_exist=$(az storage blob exists --container-name $1 --name $2 --auth-mode login | grep exists)
    if [[ $does_exist == *"true"* ]]; then
        echo '[!] The file with the same name already exists in your storage.'
        exit 1
    else
        az storage blob upload --container-name $1 -f $2 --auth-mode login
        echo '[✔] File successfully uploaded!'
        az storage blob list --container-name $1 --output table --auth-mode login
        exit 1
    fi
    exit 1
fi
