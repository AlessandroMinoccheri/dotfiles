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
cp -rf nvim ~/.config

printf "\nInstalling global git configuration to ignore files and folders"
cp gitignore_global ~/.gitignore_global
git config --global core.excludesfile ~/.gitignore_global

printf "\nInstalling git configurations and aliases"
cp gitconfig ~/.gitconfig

printf "\nCopying personal oh-my-zsh configuration"
cp -rf  oh-my-zsh/ ~/.oh-my-zsh/

printf "\nInstalling ideavim configuration"
cp .ideavimrc ~/.ideavimrc
