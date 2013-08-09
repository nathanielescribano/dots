#!/bin/zsh

rm ~/.zshrc
rm ~/.pentadactylrc
rm -r ~/.pentadactyl
rm ~/.tmux.conf
rm ~/.zlogin
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

setopt EXTENDED_GLOB
for rcfile in "${ZDOTDIR:-$HOME}"/.dots/.zprezto/runcoms/^README.md(.N); do
  ln -s "$rcfile" "${ZDOTDIR:-$HOME}/.${rcfile:t}"
done

cd ~/.dots/.vim/bundle/vim-commandt
rake make

cd ~/.dots/.vim/bundle/vim-ag
rake install
