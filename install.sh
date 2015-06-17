#!/bin/bash

cd ~/.dotfiles

# Link root files

cd rootfiles

for fname in *; do
    sname="$HOME/.${fname}"
    rm $sname
    ln -s "$HOME/.dotfiles/rootfiles/$fname" $sname
done


# run commands for OS and application settings

cd ~/.dotfiles

cd fixsettings

for fname in *; do
    eval "./$fname"
done


# configure vim 

mkdir $HOME/.tmp
cd ~
rm -Rf $HOME/.vim/bundle/*
vundle_repo=$HOME/.vim/bundle/Vundle.vim
if [ -d $vundle_repo ]; then
    git pull $vundle_repo
else
    git clone https://github.com/gmarik/Vundle.vim.git $vundle_repo
fi
vim +PluginInstall +qall
