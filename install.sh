#!/bin/bash
echo "Install base packages"
sudo apt install -y zsh build-essential git vim tmux 
git config --global user.name "Paul Nunnerley"
git config --global user.email mail@paulnunnerley.com

echo "Link dot files"
ln -s $PWD/vimrc ~/.vimrc
ln -s $PWD/tmux.conf ~/.tmux.conf
ln -s $PWD/vim ~/.vim
ln -s $PWD/zshrc ~/.zshrc
ln -s $PWD/oh-my-zsh ~/.oh-my-zsh
ln -s $PWD/jenv ~/.jenv
ln -s $PWD/nvm ~/.nvm

echo "Download submodules"
git submodule update --init
vim +PluginInstall +qall
