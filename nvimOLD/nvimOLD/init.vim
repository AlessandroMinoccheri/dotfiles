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
Plug 'w0rp/ale'
Plug 'gabrielelana/vim-markdown'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim', { 'tag': '0.1.0' }
Plug 'hrsh7th/vim-vsnip'
Plug 'hrsh7th/vim-vsnip-integ'
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'hrsh7th/cmp-buffer'
Plug 'hrsh7th/cmp-path'
Plug 'hrsh7th/cmp-cmdline'
Plug 'hrsh7th/nvim-cmp'
Plug 'hrsh7th/cmp-vsnip'
Plug 'hrsh7th/cmp-nvim-lsp-signature-help'

" Package manager
Plug 'williamboman/mason.nvim'

" theme
Plug 'folke/tokyonight.nvim', { 'branch': 'main' }

" easily search, substitute, abbreviate multiple version of words, coercion to camel case / snake case / dote case / title case...
Plug 'tpope/vim-abolish'

" the . command can repeat whatever you want!
" http://vimcasts.org/episodes/creating-repeatable-mappings-with-repeat-vim/
Plug 'tpope/vim-repeat'

" keystroke to comment automatically depending on the file you're in
Plug 'tpope/vim-commentary'

" Match more stuff with % (html tag, LaTeX...)
Plug 'andymass/vim-matchup'

" Intellisense
Plug 'neovim/nvim-lspconfig'
Plug 'hrsh7th/nvim-compe'
Plug 'nvim-lualine/lualine.nvim'

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


" Python
Plug 'davidhalter/jedi-vim'

" Coc extensions
let g:coc_global_extensions = []
call plug#end()

" Treat Json as Jsonc
augroup JsonToJsonc
    autocmd! FileType json set filetype=jsonc
augroup END

syntax enable
set list listchars=tab:»·,trail:·
set shiftwidth=4
set softtabstop=4
set tabstop=4
set background=dark
set expandtab
set colorcolumn=120
set number                  " show line numbers
set relativenumber
set ignorecase              " ignore case when searching
set ruler                   " show the current row and column
set nobackup
highlight ColorColumn ctermbg=0 guibg=lightgrey
colorscheme tokyonight-night
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
let NERDTreeShowHidden=1                                                    " nerdTree show always hidden files
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

let mapleader = " " " map leader to Space

"Remapping key
noremap <Leader><Leader> :tabe ~/.config/nvim/init.vim

" Find files using Telescope command-line sugar.
nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <leader>fb <cmd>Telescope buffers<cr>
nnoremap <leader>fh <cmd>Telescope help_tags<cr>

"nnoremap <c-p> :Files<cr>
"nnoremap <shift> :Files<cr>
nnoremap t :bNext<cr>
"nmap <leader>gd <Plug>(coc-definition)
"nmap <leader>gr <Plug>(coc-references)
nnoremap <expr> j v:count ? 'j' : 'gj'
nnoremap <expr> k v:count ? 'k' : 'gk'

"Disable arrow keys
noremap <Up> <Nop>
noremap <Down> <Nop>
noremap <Left> <Nop>
noremap <Right> <Nop>

" LSP config (the mappings used in the default file don't quite work right)
nnoremap <silent> gd <cmd>lua vim.lsp.buf.definition()<CR>
nnoremap <silent> gD <cmd>lua vim.lsp.buf.declaration()<CR>
nnoremap <silent> gr <cmd>lua vim.lsp.buf.references()<CR>
nnoremap <silent> gi <cmd>lua vim.lsp.buf.implementation()<CR>
nnoremap <silent> K <cmd>lua vim.lsp.buf.hover()<CR>
nnoremap <silent> <C-k> <cmd>lua vim.lsp.buf.signature_help()<CR>
nnoremap <silent> <C-n> <cmd>lua vim.lsp.diagnostic.goto_prev()<CR>
nnoremap <silent> <C-p> <cmd>lua vim.lsp.diagnostic.goto_next()<CR>

" auto-format
autocmd BufWritePre *.js lua vim.lsp.buf.formatting_sync(nil, 100)
autocmd BufWritePre *.jsx lua vim.lsp.buf.formatting_sync(nil, 100)
autocmd BufWritePre *.py lua vim.lsp.buf.formatting_sync(nil, 100)
autocmd BufWritePre *.ts lua vim.lsp.buf.formatting_sync(nil, 100)
autocmd BufWritePre *.tsx lua vim.lsp.buf.formatting_sync(nil, 100)
autocmd BufWritePre *.php lua vim.lsp.buf.formatting_sync(nil, 100)


"Disable ESC button
inoremap <C-c> <esc>

autocmd FileType php nnoremap <buffer> <C-]> :call phpactor#GotoDefinition()<CR>
autocmd FileType json syntax match Comment +\/\/.\+$+

function! SetupCommandAbbrs(from, to)
  exec 'cnoreabbrev <expr> '.a:from
        \ .' ((getcmdtype() ==# ":" && getcmdline() ==# "'.a:from.'")'
        \ .'? ("'.a:to.'") : ("'.a:from.'"))'
endfunction

"prettier for JS linter

let g:ale_fixers = {}
let g:ale_fixers['javascript'] = ['eslint']
let g:ale_linters = { 'php': ['php', 'psalm'] }
let g:ale_sign_error = '❌'
let g:ale_sign_warning = '⚠️'
let g:ale_fix_on_save = 1
let g:ale_lint_on_enter = 0 " Less distracting when opening a new file

" FZF searching hidden files also

let $FZF_DEFAULT_COMMAND = 'ag --hidden --ignore .git -l -g ""'

" Enable FileType to differentiate custom configuration
filetype on
filetype indent on
filetype plugin on
filetype indent plugin on    " the order of 'indent' and 'plugin' is irrelevant

" Telling to neovim that file with these type of extension are typescript
" files to use a specific configuration in after/ftplugin/typescript.vim
augroup SyntaxSettings
    autocmd!
    autocmd BufNewFile,BufRead *.tsx set filetype=typescript
    autocmd BufNewFile,BufRead *.ts set filetype=typescript
augroup END

""" Core plugin configuration (lua)
lua << EOF
servers = {
    'pyright',
    'tsserver', -- uncomment for typescript. See https://github.com/neovim/nvim-lspconfig/blob/master/doc/server_configurations.md for other language servers
    'phpactor',
    'jsonls',
    'rust_analyzer'
}
require('nvim-cmp-config')
require('lspconfig-config')
require('lualine-config')
require('diagnostics')
require'lspconfig'.tsserver.setup {}
require'lspconfig'.phpactor.setup{}
require'lspconfig'.jsonls.setup{}
require'lspconfig'.pyright.setup{}
require'lspconfig'.rust_analyzer.setup{}
EOF
