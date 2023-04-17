#!/bin/bash

user="$USER"

if [ -d "/home/$USER/Pictures/Backgrounds" ]
then
    echo "Backgrounds exists, updating..."
else
    echo "Backgrounds doesn't exist, creating in $USER/Pictures..."
    mkdir ~/Pictures/Backgrounds
fi

git clone https://github.com/Mason-17/wallpapers ~/.wall

rsync -a ~/.wall/ ~/Pictures/Backgrounds

if [ -d "/home/$USER/Pictures/Backgrounds/catppuccin" ] 
then
    echo "Directory captppuccin exists, finishing up..." 
else
    echo "Error: Directory catppuccin does not exist."
    exit 1
fi

rm -rf ~/.wall

if [ ! -d "/home/$USER/.wall" ]
then
    echo "Cleanup successful..."
else 
    echo "Error, .wall still exists, exiting..."
    exit 1
fi

echo "Finished without errors!"