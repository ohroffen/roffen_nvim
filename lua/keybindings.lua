-- some leader key configs(which I think won't be used at all...
vim.g.mapleader = " "
vim.g.maplocalleader = " "

local map = vim.api.nvim_set_keymap
local opt = {noremap = true, silent = true}

-- some basic keybindings

map('v','<','<gv',opt)
map('v','>','>gv',opt)

map("n", "sv", ":vsp<CR>", opt)
map("n", "sh", ":sp<CR>", opt)
map("n", "sc", "<C-w>c", opt)
map("n", "so", "<C-w>o", opt) -- close others

map("n", "<A-h>", "<C-w>h", opt)
map("n", "<A-j>", "<C-w>j", opt)
map("n", "<A-k>", "<C-w>k", opt)
map("n", "<A-l>", "<C-w>l", opt)

-- plugins keybindings
-- -- LeaderF
-- vim.g.Lf_ShortcutF = '<C-p>'
-- map('n','<leader>ff',':<C-U>Leaderf file --popup<CR>',opt)
-- map('n','<leader>fh',':<C-U>Leaderf help --popup<CR>',opt)
-- map('n','<leader>fg',':<C-U>Leaderf rg --no-messages --popup<CR>',opt)
-- map('n','<leader>ft',':<C-U>Leaderf bufTag --popup<CR>',opt)
-- map('n','<leader>fb',':<C-U>Leaderf buffer --popup<CR>',opt)
-- map('n','<leader>fr',':<C-U>Leaderf mru --popup --absolute-path<CR>',opt)
-- telescope
local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
vim.keymap.set('n', '<C-p>', builtin.find_files, {})
vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
vim.keymap.set('n', '<leader>fb', builtin.buffers, {})
vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})

-- nvim-tree.lua
map("n","<C-t>",":NvimTreeToggle<CR>",opt)
