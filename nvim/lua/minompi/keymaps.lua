M = {}

local function keymap(mode, lhs, rhs, opts)
  local options = { noremap=true, silent=true }
  if opts then
    options = vim.tbl_extend('force', options, opts)
  end
  vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end

-- MapLeader Space
vim.g.mapleader = " "

--Remap space as leader key
keymap("n", "<Space>", "", opts)
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Remap for nvim-tree
-- -- NvimTree
keymap('n', '<C-n>', ':NvimTreeToggle<CR>')            -- open/close
keymap('n', '<leader>r', ':NvimTreeRefresh<CR>')       -- refresh

-- Disable arrows function
keymap('i', '<up>', '<nop>')
keymap('i', '<down>', '<nop>')
keymap('i', '<left>', '<nop>')
keymap('i', '<right>', '<nop>')
keymap('v', '<up>', '<nop>')
keymap('v', '<down>', '<nop>')
keymap('v', '<left>', '<nop>')
keymap('v', '<right>', '<nop>')
keymap('n', '<up>', '<nop>')
keymap('n', '<down>', '<nop>')
keymap('n', '<left>', '<nop>')
keymap('n', '<right>', '<nop>')

-- Map Esc to kk
keymap('i', 'kk', '<Esc>')

-- Move into buffers
keymap('n', '<TAB>', ':BufferLineCycleNext<CR>')            -- next buffer
keymap('n', '<S-TAB>', ':BufferLineCyclePrev<CR>')          -- next buffer


-- Telescope
local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
vim.keymap.set('n', '<leader>fb', builtin.buffers, {})
vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})

return M
