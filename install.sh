#!/bin/bash
ln -s $PWD/vimrc ~/.vimrc
ln -s $PWD/tmux.conf ~/.tmux.conf
ln -s $PWD/vim ~/.vim

git submodule update --init
vim +PluginInstall +qall
