vim.g.mapleader = " "

local map = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }

-- map("n", "<leader>e", ":NvimTreeFindRootDirectory<CR>", opts)
map("n", "<C-z>", "u", opts)
map("n", "<C-y>", "<C-r>", opts)

map("i", "<C-z>", "<C-o>u", opts)
map("i", "<C-y>", "<C-o><C-r>", opts)
-- Ctrl + Shift + arrows to move between splits
map("n", "<C-S-Left>", "<C-w>h", opts)
map("n", "<C-S-Down>", "<C-w>j", opts)
map("n", "<C-S-Up>", "<C-w>k", opts)
map("n", "<C-S-Right>", "<C-w>l", opts)
map("n", "<leader><Tab>", ":b#<CR>", opts)
map("n", "<leader>q", "<C-w>c", opts)
map("n", "<leader>Q", "<C-w>o", opts)
