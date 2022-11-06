# Dotfiles

This repository contains my personal configuration about some software that normally I use like: 

* nvim
* phpstorm
* github
* zsh

and others.

## Necessary for neovim

```
brew install ripgrep
brew install fd
```

## Useful library

```
brew install the_silver_searcher
brew install automake pkg-config pcre xz
brew install ctags-exuberant
brew install python3
brew install tig
```

## Fonts

```
git clone https://github.com/powerline/fonts.git
cd fonts
./install.sh
cd ..
rm -rf fonts
```

After enter into iTerm2 Preferences, select the prefered profile and change the font ASCII with Droid Sans Mono for Powerline

### PHPActor

If you want to use with success PHPActor you need to go into its directory (example: ~./config/nvim/plugged/phpactor), and launch:

```
composer install
```

Please contribute if you want to create better configuration
