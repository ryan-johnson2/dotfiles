#!/bin/bash

DOTPATH=$(pwd)
DOTFILES=(vim bashrc gitconfig tmux.conf inputrc)

for DOTFILE in ${DOTFILES[*]}
do
    rm -rf $HOME/.$DOTFILE
    ln -s $DOTPATH/$DOTFILE $HOME/.$DOTFILE
done

source $HOME/.bashrc
source $HOME/.inputrc
