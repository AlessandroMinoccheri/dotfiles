#!/bin/bash

printf "\nCopying profile configuration"
cp ~/.bash_profile bash_profile

printf "\nCopying personal zsh configuration"
cp -rf ~/.zsh/ zsh

printf "\nCopying zsh configuration"
cp ~/.zshrc zshrc
