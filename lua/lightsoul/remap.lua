vim.g.mapleader = " "

local map = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }

-- let g:ftplugin_sql_omni_key = '<C-j>' IN LUA
vim.g.ftplugin_sql_omni_key = "<C-j>"

map("n", "Q", "<nop>", opts)
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
map("n", "<leader>p", "", opts)
map("v", "<A-Up>", ":m '<-2<CR>gv=gv", opts)
map("v", "<A-Down>", ":m '>+1<CR>gv=gv", opts)

map("n", "<leader>y", '\"+y', opts)
map("v", "<leader>y", '\"+y', opts)
map("n", "<leader>Y", '\"+Y', opts)

-- ctrl + l to select line
map("i", "<C-l>", "<Esc>^v$", opts)
map("n", "<C-l>", "^v$", opts)
-- ctrl + b to select block
-- map("i", "<C-b>", "<Esc>^v%", opts)
-- map("n", "<C-b>", "^v%", opts)
map("i", "<C-c>", "<Esc>", opts)
map("i", "<C-V>", "<Esc>v", opts)

vim.keymap.set("n", "<leader>f", function()
    vim.lsp.buf.format()
end)

vim.keymap.set("n", "<leader>r", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])
