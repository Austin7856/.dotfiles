#!/bin/bash

OS=$(uname) # saves the result of uname
if [ "$OS" != "Linux" ]; then # checks if the result of uname is not equal to linux
	echo "Error! Not using Linux" >> linuxsetup.log # redirects the error message to linuxsetup.log
	exit 2 # exits
fi # end if

VIMRC=~/.vimrc # saves the name of the .vimrc file
mkdir -p ~/.TRASH # creates a .TRASH directory if it does not exist

if [ -f "$VIMRC" ]; then # checks if the .vimrc file exists
	mv .vimrc .bup_vimrc # if it does renames it to .bup_vimrc
	echo ".vimrc was changed to .bup_vimrc" >> linuxsetup.log # redirects the message to linuxsetup.log
fi # end if

touch ~/.vimrc # creates the new .vimrc file

cat ./etc/vimrc > ~/.vimrc # overwrites the .vimrc file with the one in our .dotfiles/etc/vimrc one
echo "source ~/.dotfiles/etc/bashrc_custom" >> ~/.bashrc # adds the line to the end of the .bashrc file
