#!/bin/bash
sudo apt install -y zsh build-essential git vim tmux 
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
sudo chsh -S /bin/zsh
ln -s $PWD/vimrc ~/.vimrc
ln -s $PWD/tmux.conf ~/.tmux.conf
ln -s $PWD/vim ~/.vim

git submodule update --init
vim +PluginInstall +qall
