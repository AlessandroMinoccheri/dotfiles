#!/bin/bash

printf "\nInstalling profile configuration"
cp -f bash_profile ~/.bash_profile

printf "\nCopying personal zsh configuration"
cp -rf  zsh/ ~/.zsh/

printf "\nInstalling zsh configuration"
cp -f zshrc ~/.zshrc

printf "\nInstalling zsh configuration"
mkdir -p ~/.config
cp vimrc ~/.vimrc
cp -rf nvim ~/.config/nvim

printf "\nInstalling global git configuration to ignore files and folders"
cp gitignore_global ~/.gitignore_global
git config --global core.excludesfile ~/.gitignore_global
