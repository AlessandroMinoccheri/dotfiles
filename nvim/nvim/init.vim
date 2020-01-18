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
Plug 'majutsushi/tagbar'
Plug 'phpactor/phpactor', {'for': 'php', 'do': 'composer install'}
Plug 'stephpy/vim-php-cs-fixer'
Plug 'leafgarland/typescript-vim'
Plug 'peitalin/vim-jsx-typescript'
Plug 'neoclide/coc.nvim', {'branch': 'release'}

let g:coc_user_config = get(g:, 'coc_user_config', {})
let g:coc_global_extensions = ['coc-json', 'coc-tsserver', 'coc-tslint', 'coc-prettier']
call plug#end()

syntax enable
set list listchars=tab:»·,trail:·
set shiftwidth=4
set softtabstop=4
set tabstop=4
set background=dark
set expandtab
set colorcolumn=120
set number                  " show line numbers
set ignorecase              " ignore case when searching
set ruler                   " show the current row and column
set nobackup
highlight ColorColumn ctermbg=0 guibg=lightgrey
colorscheme OceanicNext
set guifont=DroidSansMono_Nerd_Font:h11

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
let g:tabline#show_tabs = 0
let g:airline#extensions#hunks#enabled=0

"GitGutter
let g:gitgutter_async=0
set updatetime=200

" tagbar
let g:tagbar_width =  70
autocmd FileType php nnoremap <buffer> <C-e> :TagbarToggle<CR>

"the silver seracher for :Ag
let g:ackprg = 'ag --nogroup --nocolor --column'

"NeoMake configuration
call neomake#configure#automake('nrwi', 500)

"Remapping key
nnoremap <Leader><Leader> :tabe ~/.config/nvim/init.vim
nnoremap <c-p> :Files<cr>
nnoremap <shift> :Files<cr>
nnoremap t :bNext<cr>
autocmd FileType php nnoremap <buffer> <C-]> :call phpactor#GotoDefinition()<CR>
autocmd FileType json syntax match Comment +\/\/.\+$+

function! SetupCommandAbbrs(from, to)
  exec 'cnoreabbrev <expr> '.a:from
        \ .' ((getcmdtype() ==# ":" && getcmdline() ==# "'.a:from.'")'
        \ .'? ("'.a:to.'") : ("'.a:from.'"))'
endfunction

" Use C to open coc config
call SetupCommandAbbrs('C', 'CocConfig')


