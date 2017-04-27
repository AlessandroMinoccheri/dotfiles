#!/bin/bash

printf "\nCopying profile configuration"
cp ~/.bash_profile bash_profile

printf "\nCopying personal zsh configuration"
cp -rf ~/.zsh/ zsh

printf "\nCopying zsh configuration"
cp ~/.zshrc zshrc

printf "\nCopying neovim configuration"
cp ~/.vimrc vimrc
cp -rf ~/.config/nvim nvim

printf "\nCopying git general ignores file and folders"
cp ~/.gitignore_global gitignore_global

printf "\Copying git configurations and aliases"
cp ~/.gitconfig gitconfig
