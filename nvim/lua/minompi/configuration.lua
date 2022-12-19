
vim.o.relativenumber = true


vim.o.syntax = true
vim.o.shiftwidth=4
vim.o.softtabstop=4
vim.o.tabstop=4
vim.o.background=dark
vim.o.expandtab=true
vim.o.colorcolumn=120
vim.o.number=true                  -- show line numbers
vim.o.relativenumber=true
vim.o.ignorecase=true              -- ignore case when searching
vim.o.ruler=true                   -- show the current row and column
vim.opt.writebackup = false
vim.opt.guifont = { "DroidSansMono_Nerd_Font", ":h11"}
vim.g.tagbar_width = 70
vim.g.tagbar_compact = 1
vim.g.tagbar_show_data_type = 1
vim.g.tagbar_show_visibility = 0

vim.g.php_cs_fixer_rules = "@PSR2"          --options: --rules (default:@PSR2)
vim.g.php_cs_fixer_cache = ".php_cs.cache" 
vim.g.php_cs_fixer_config_file = '.php_cs' -- options: --config
vim.g.php_cs_fixer_allow_risky = "yes"
vim.g.php_cs_fixer_php_path = "/usr/local/bin/php"               -- Path to PHP
vim.g.php_cs_fixer_enable_default_mapping = 1     -- Enable the mapping by default (<leader>pcd)
vim.g.php_cs_fixer_dry_run = 0                    -- Call command with dry-run option
vim.g.php_cs_fixer_verbose = 0
vim.g.php_cs_fixer_path = "~/php-cs-fixer/vendor/friendsofphp/php-cs-fixer/php-cs-fixer"
