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

mv ~/.tmp/catppuccin ~/Pictures/Backgrounds/
mv ~/.tmp/halo ~/Pictures/Backgrounds/
mv ~/.tmp/landscapes ~/Pictures/Backgrounds/
mv ~/.tmp/mechs ~/Pictures/Backgrounds/
mv ~/.tmp/misc ~/Pictures/Backgrounds/
mv ~/.tmp/sonic ~/Pictures/Backgrounds/
mv ~/.tmp/star-wars ~/Pictures/Backgrounds/
mv ~/.tmp/various-os ~/Pictures/Backgrounds/

if [ -d "/home/$USER/Pictures/Backgrounds/catppuccin" ] 
then
    echo "Directory captppuccin exists, finishing up..." 
else
    echo "Error: Directory catppuccin does not exist."
fi

rm -r ~/.tmp

echo "Finished without errors!"