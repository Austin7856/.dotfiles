#!/bin/bash

VIMRC=~/.vimrc # saves the location of the .vimrc file
TRASH=~/.TRASH # saves the location of the .TRASH directory
if [ -f "$VIMRC" ]; then # checks if file exists
	rm ~/.vimrc # removes .vimrc
fi # end if
sed -i 's/source ~\/.dotfiles\/etc\/bashrc_custom//g' ~/.bashrc # removes the source command added to the bashrc file
if [ -d "$TRASH" ]; then # checks if directory exists
	rm -r ~/.TRASH # removes .TRASH
fi # end if
