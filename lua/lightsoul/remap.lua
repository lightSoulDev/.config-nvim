vim.g.mapleader = " "

local map = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }

-- map("n", "<leader>e", ":NvimTreeFindRootDirectory<CR>", opts)
map("n", "<C-z>", "u", opts)
map("n", "<C-y>", "<C-r>", opts)

map("i", "<C-z>", "<C-o>u", opts)
map("i", "<C-y>", "<C-o><C-r>", opts)
