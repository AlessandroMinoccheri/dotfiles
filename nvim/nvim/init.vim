call plug#begin('~/.config/nvim/plugged')
" Plugins will go here in the middle.
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'rking/ag.vim'
Plug 'mhartington/oceanic-next'
Plug 'kien/ctrlp.vim' 
call plug#end()

syntax enable
set list listchars=tab:»·,trail:·
set shiftwidth=4
set softtabstop=4
set tabstop=4
set background=dark
set expandtab
set colorcolumn=80
set number
highlight ColorColumn ctermbg=0 guibg=lightgrey
colorscheme OceanicNext

nnoremap <Leader><Leader> :tabe ~/.config/nvim/init.vim
