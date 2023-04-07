#!/bin/bash

user="$USER"

echo "Downloading configs..."

git clone https://github.com/Mason-17/dots ~/.tmp

if [ -d "/home/$USER/.config/polybar" ]
then
    echo "Polybar dir exists, moving on..."
else
    echo "Polybar dir doesn't exist, creating..."
    mkdir ~/.config/polybar

    if [ -d "/home/$USER/.config/polybar" ] 
    then
        echo "We're back on track, baby..."
    else
        echo "Something went wrong, it seems..."
        exit 1
    fi
fi

if [ -d "/home/$USER/.config/polybar/scripts" ]
then
    echo "Scripts dir exists, good to go..."
else
    echo "Scripts dir does not exist, creating..."
    mkdir ~/.config/polybar/scripts

    if [ -d "/home/$USER/.config/polybar/scripts" ]
    then
        echo "Directory created, resuming..."
    else
        echo "Something went wrong, it seems..."
        exit 1
    fi
fi

mv ~/.tmp/polybar/config.ini ~/.config/polybar/
mv ~/.tmp/polybar/scripts/player-mpris-simple.sh ~/.config/polybar/scripts/
chmod +x ~/.config/polybar/scripts/player-mpris-simple.sh

FILE=/home/$USER/.config/polybar/config.ini
if test -f "$FILE"; then
    echo "$FILE exists, moving on..."
else
    echo "$FILE doesn't exist, something went wrong..."
    exit 1
fi

FILE=/home/$USER/.config/polybar/scripts/player-mpris-simple.sh
if test -f "$FILE"; then
    echo "$FILE exists, moving on..."
else
    echo "$FILE doesn't exist, something went wrong..."
    exit 1
fi
rm -r ~/.tmp

echo "Done!"
exit 0