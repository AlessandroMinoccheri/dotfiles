#!/bin/bash

printf "\nInstalling profile configuration"
cp -f bash_profile ~/.bash_profile

printf "\nCopying personal zsh configuration"
cp -rf  zsh/ ~/.zsh/

printf "\nInstalling zsh configuration"
cp -f zshrc ~/.zshrc

printf "\nInstalling zsh configuration"
mkdir -p ~/.config
cp -rf nvim ~/.config/nvim