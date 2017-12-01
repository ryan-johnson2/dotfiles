#!/bin/bash

NOINC="install.sh"
DOTPATH=$(pwd)
DOTFILES=$(ls | grep -Ev $NOINC)


for DOTFILE in ${DOTFILES[*]}
do
    rm -rf "$HOME/.$DOTFILE"
    ln -s "$DOTPATH/$DOTFILE" "$HOME/.$DOTFILE"
done
