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
Plug 'leafgarland/typescript-vim'
Plug 'peitalin/vim-jsx-typescript'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'w0rp/ale'

" easily search, substitute, abbreviate multiple version of words, coercion to camel case / snake case / dote case / title case...
Plug 'tpope/vim-abolish'

" the . command can repeat whatever you want!
" http://vimcasts.org/episodes/creating-repeatable-mappings-with-repeat-vim/
Plug 'tpope/vim-repeat'

" keystroke to comment automatically depending on the file you're in
Plug 'tpope/vim-commentary'

" Match more stuff with % (html tag, LaTeX...)
Plug 'andymass/vim-matchup'

" PHP
" Plug 'joonty/vdebug'
Plug 'StanAngeloff/php.vim', {'for': 'php'}
Plug 'stephpy/vim-php-cs-fixer', {'for': 'php'}
Plug 'nishigori/vim-php-dictionary', {'for': 'php'}
Plug 'lumiliet/vim-twig', {'for': 'twig'} " twig
Plug 'adoy/vim-php-refactoring-toolbox', {'for': 'php'} " php refactoring options
Plug 'phpactor/phpactor', {'for': 'php', 'do': 'composer install --no-dev -o'}
Plug '2072/php-indenting-for-vim', {'for': 'php'}
Plug 'tobyS/vmustache' | Plug 'tobyS/pdv', {'for': 'php'} " php doc autocompletion 

" Javascript
Plug 'pangloss/vim-javascript'
Plug 'leafgarland/typescript-vim'
Plug 'mxw/vim-jsx' " For react
Plug 'posva/vim-vue' " For Vue

" Undo tree display
Plug 'simnalamburt/vim-mundo'

" CSV plugin
Plug 'chrisbra/csv.vim'

let g:coc_user_config = get(g:, 'coc_user_config', {})
" Coc extensions
let g:coc_global_extensions = [
    \ 'coc-snippets',
    \ 'coc-json', 
    \ 'coc-css', 
    \ 'coc-tsserver',
    \ 'coc-html',
    \ 'coc-yaml',
    \ 'coc-prettier',
    \ 'coc-tslint'
    \]
" \ 'coc-markmap',
" \ 'coc-sh',
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
nmap <leader>gd <Plug>(coc-definition)
nmap <leader>gr <Plug>(coc-references)

"Disable arrow keys
noremap <Up> <Nop>
noremap <Down> <Nop>
noremap <Left> <Nop>
noremap <Right> <Nop>

"Disable ESC button
inoremap <C-c> <esc>

autocmd FileType php nnoremap <buffer> <C-]> :call phpactor#GotoDefinition()<CR>
autocmd FileType json syntax match Comment +\/\/.\+$+

function! SetupCommandAbbrs(from, to)
  exec 'cnoreabbrev <expr> '.a:from
        \ .' ((getcmdtype() ==# ":" && getcmdline() ==# "'.a:from.'")'
        \ .'? ("'.a:to.'") : ("'.a:from.'"))'
endfunction

" Use C to open coc config
call SetupCommandAbbrs('C', 'CocConfig')

"prettier for JS linter

let g:ale_fixers = {}
let g:ale_fixers['javascript'] = ['eslint']
let g:ale_linters = { 'php': ['php', 'psalm'] }
let g:ale_sign_error = '❌'
let g:ale_sign_warning = '⚠️'
let g:ale_fix_on_save = 1
let g:ale_lint_on_enter = 0 " Less distracting when opening a new file

