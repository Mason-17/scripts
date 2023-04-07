#!/bin/bash

user="$USER"

if [ -d "/home/$USER/Pictures/Backgrounds" ]
then
    echo "Backgrounds exists, updating..."
else
    echo "Backgrounds doesn't exist, creating in [username]/Pictures..."
    mkdir ~/Pictures/Backgrounds
fi

git clone https://github.com/Mason-17/wallpapers ~/.tmp

rsync -a ~/.tmp/ ~/Pictures/Backgrounds

if [ -d "/home/$USER/Pictures/Backgrounds/catppuccin" ] 
then
    echo "Directory captppuccin exists, finishing up..." 
else
    echo "Error: Directory catppuccin does not exist."
fi

rm -rf ~.tmp/*

echo "Finished without errors!"