#!/bin/zsh

rm ~/.zshrc
rm ~/.pentadactylrc
rm -r ~/.pentadactyl
rm ~/.tmux.conf
rm ~/.zlogin
rm ~/.irbrc
rm ~/.zlogout
rm ~/.zpreztorc
rm -r ~/.zprezto
rm ~/.zshenv
rm ~/.zprofile
rm ~/.screenrc
rm ~/.vimrc
rm -r ~/.vim

cd ~
ln -s ~/.dots/.pentadactylrc ~/.pentadactylrc
ln -s ~/.dots/.pentadactyl ~/.pentadactyl
ln -s ~/.dots/.tmux.conf ~/.tmux.conf
ln -s ~/.dots/.screenrc ~/.screenrc
ln -s ~/.dots/.vimrc ~/.vimrc
ln -s ~/.dots/.vim ~/.vim
ln -s ~/.dots/.irbrc ~/.irbrc

# cd ~/.dots/.vim/bundle/vim-commandt
# rake make

cd ~/.dots/.vim/bundle/vim-ag
rake install
