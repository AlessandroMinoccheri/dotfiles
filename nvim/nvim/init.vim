call plug#begin('~/.config/nvim/plugged')
" Plugins will go here in the middle.
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'rking/ag.vim'
Plug 'mhartington/oceanic-next'
Plug 'https://github.com/neomake/neomake'
Plug 'airblade/vim-gitgutter'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
call plug#end()

syntax enable
set list listchars=tab:»·,trail:·
set shiftwidth=4
set softtabstop=4
set tabstop=4
set background=dark
set expandtab
set colorcolumn=120
set number
highlight ColorColumn ctermbg=0 guibg=lightgrey
colorscheme OceanicNext

"Airline configuration
set laststatus=2
let g:Powerline_symbols = 'fancy'
set t_Co=256
set fillchars+=stl:\ ,stlnc:\
if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif
let g:airline_symbols.space = "\ua0"
let g:airline_left_sep="\ue0b0"
let g:airline_right_sep="\ue0b2"
let g:airline_symbols.branch='⎇ '
let g:airline_powerline_fonts=1
let g:airline#extensions#tabline#enabled=1
let g:airline#extensions#tabline#fnamemod = ':t'                            " show only the filename into the tab buffer
let g:airline#extensions#tabline#buffer_nr_show = 1                         " show the buffer number into the tab buffer


"Remapping key
nnoremap <Leader><Leader> :tabe ~/.config/nvim/init.vim
nnoremap <c-p> :Files<cr>
nnoremap t :bNext<cr>
