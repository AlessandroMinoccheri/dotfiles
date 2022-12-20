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

## Intellisense mandatory

* Install phpactor 
* For python
```
npm i -g pyright
```
* For typescript
```
   npm install -g typescript typescript-language-server
```
* For bash
```
npm i -g bash-language-server
```
* For json
```
npm i -g vscode-langservers-extracted
```
* For Rust
```
rustup component add rust-src
brew install rust-analyzer
cargo install --features lsp --locked taplo-cli
```

* For lua 
```
brew install lua-language-server
```

## How to install a new language for LSP Intellisense
* check in this link the language that you want to install and do it: [https://github.com/neovim/nvim-lspconfig/blob/master/doc/server_configurationsy](https://github.com/neovim/nvim-lspconfig/blob/master/doc/server_configurations.md)
* change the init.vim config adding to the `servers` array your new language
* change the init.vim config adding the require for your language like: `require'lspconfig'.tsserver.setup {}`


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

Go to ~/yourHome/
```
git clone git@github.com:phpactor/phpactor
cd phpactor
composer install
cd /usr/local/bin
ln -s ~/yourHome/phpactor/bin/phpactor phpactor
phpactor status
```

##
Install Rust

```
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
```

Please contribute if you want to create better configuration
