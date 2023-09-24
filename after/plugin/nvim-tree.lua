local setup, nvimtree = pcall(require, "nvim-tree")
if not setup then return end

vim.cmd([[
    nnoremap - :NvimTreeToggle<CR>
]])

vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

local function open_nvim_tree(data)

    -- buffer is a [No Name]
    local no_name = data.file == "" and vim.bo[data.buf].buftype == ""

    -- buffer is a directory
    local directory = vim.fn.isdirectory(data.file) == 1

    if not no_name and not directory then
        return
    end

    -- change to the directory
    if directory then
        vim.cmd.cd(data.file)
        vim.cmd("Dashboard")
    end

    -- open the tree
    require("nvim-tree.api").tree.open()
end


vim.api.nvim_create_autocmd({ "VimEnter" }, { callback = open_nvim_tree })


nvimtree.setup({
    disable_netrw = false,
    hijack_netrw = true,
    respect_buf_cwd = true,
    sync_root_with_cwd = true,
})
