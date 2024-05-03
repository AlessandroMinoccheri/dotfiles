return require('packer').startup(function(use)
	-- packer can manage itself
use "wbthomason/packer.nvim"
use('nvim-lualine/lualine.nvim') -- customize end lines and other things

use {
  'nvim-tree/nvim-tree.lua',
  requires = {
    'nvim-tree/nvim-web-devicons', -- optional, for file icons
  },
  tag = 'nightly' -- optional, updated every week. (see issue #1193)
}

use {'akinsho/bufferline.nvim', tag = "v3.*", requires = 'nvim-tree/nvim-web-devicons'} -- buffer manager

use {
  'nvim-telescope/telescope.nvim', tag = '0.1.4',
-- or                            , branch = '0.1.x',
  requires = { {'nvim-lua/plenary.nvim'} }
}

use({
  'phpactor/phpactor',
  branch = 'master',
  ft = 'php',
  run = 'composer install --no-dev -o',
  config = function()
    require('minompi.plugins.phpactor')
  end,
})

-- markdown preview
use({
    "iamcco/markdown-preview.nvim",
    run = function() vim.fn["mkdp#util#install"]() end,
})

-- Yaml
use {
  "cuducos/yaml.nvim",
  ft = {"yaml"}, -- optional
  requires = {
    "nvim-treesitter/nvim-treesitter",
    "nvim-telescope/telescope.nvim" -- optional
  },
}

use "rking/ag.vim"
use "mhartington/oceanic-next"
use "https://github.com/neomake/neomake"
use "airblade/vim-gitgutter"
use "majutsushi/tagbar"
use "leafgarland/typescript-vim"
use "peitalin/vim-jsx-typescript"
use "w0rp/ale"
use "gabrielelana/vim-markdown"
use "nvim-lua/plenary.nvim"
use "hrsh7th/vim-vsnip"
use "hrsh7th/vim-vsnip-integ"
use "hrsh7th/cmp-nvim-lsp"
use "hrsh7th/cmp-buffer"
use "hrsh7th/cmp-path"
use "hrsh7th/cmp-cmdline"
use "hrsh7th/nvim-cmp"
use "hrsh7th/cmp-vsnip"
use "hrsh7th/cmp-nvim-lsp-signature-help"

-- Package manager
use "williamboman/mason.nvim"

-- colorscheme
use("gruvbox-community/gruvbox")
use("folke/tokyonight.nvim")

-- easily search, substitute, abbreviate multiple version of words, coercion to camel case / snake case / dote case / title case...
use "tpope/vim-abolish"

-- the . command can repeat whatever you want!
use "tpope/vim-repeat"

-- keystroke to comment automatically depending on the file you're in
use "tpope/vim-commentary"

-- Match more stuff with % (html tag, LaTeX...)
use "andymass/vim-matchup"

-- Intellisense
use "neovim/nvim-lspconfig"
use "hrsh7th/nvim-compe"

-- Javascript
use "pangloss/vim-javascript"
use "mxw/vim-jsx"
use "posva/vim-vue"

-- Undo tree display
use "simnalamburt/vim-mundo"

-- CSV plugin
use "chrisbra/csv.vim"

-- Python
use "davidhalter/jedi-vim"

-- Vim be good
use "ThePrimeagen/vim-be-good"

-- PHP formatter
use "stephpy/vim-php-cs-fixer"

-- Rust tools
use "simrat39/rust-tools.nvim"
use "mfussenegger/nvim-dap"

-- Java
use({
  "mfussenegger/nvim-jdtls",
  config = function()
    -- https://github.com/fitrh/init.nvim/blob/main/lua/plugin/jdtls/config.lua
    require("plugin.jdtls.config").attach()
  end,
  module = "jdtls",
})
end)
