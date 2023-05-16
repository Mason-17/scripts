#!/bin/bash

user="$USER"

if [ -d "/home/$USER/Templates" ]
then
    echo "Templates exists, updating..."
else
    echo "Templates doesn't exist, creating in $USER/Pictures..."
    mkdir ~/Templates
fi

git clone https://github.com/Mason-17/templates ~/.templ

rsync -a ~/.templ/ ~/Templates

rm -rf ~/.templ

echo "finished!"