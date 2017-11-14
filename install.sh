#!/bin/bash

DOTPATH=$(pwd)
DOTFILES=$(ls | grep -v install.sh)

for DOTFILE in ${DOTFILES[*]}
do
    rm -rf $HOME/.$DOTFILE
    ln -s $DOTPATH/$DOTFILE $HOME/.$DOTFILE
done

source $HOME/.bashrc
source $HOME/.inputrc
