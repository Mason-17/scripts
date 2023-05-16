#!/bin/sh

user="$USER"

git clone https://github.com/Mason-17/scripts ~/.scr

rsync -a ~/.scr/ ~/scripts

rm -rf ~/.scr

echo "Finished!"