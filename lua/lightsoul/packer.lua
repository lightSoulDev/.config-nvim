vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
    -- Packer can manage itself
    use 'wbthomason/packer.nvim'

    use({ "nvim-treesitter/nvim-treesitter", run = ":TSUpdate" })
    use("nvim-treesitter/playground")

    use 'gioele/vim-autoswap'
    use 'nvim-tree/nvim-web-devicons'

    use { "catppuccin/nvim", as = "catppuccin" } -- https://github.com/catppuccin/nvim

    use {
        "nvim-telescope/telescope-fzf-native.nvim", -- https://github.com/nvim-telescope/telescope-fzf-native.nvim
        run = "make",
    }

    use {
        'nvim-telescope/telescope.nvim', tag = '0.1.1',
        -- or                            , branch = '0.1.x',
        requires = { { 'nvim-lua/plenary.nvim' } }
    }

    use {
        "nvim-tree/nvim-tree.lua",         -- https://github.com/nvim-tree/nvim-tree.lua
        requires = {
            "nvim-tree/nvim-web-devicons", -- https://github.com/nvim-tree/nvim-web-devicons
        },
    }

    use { "romgrk/barbar.nvim", wants = "nvim-tree/nvim-web-devicons" } -- https://github.com/romgrk/barbar.nvim
    -- use {'akinsho/bufferline.nvim', tag = "v3.*", requires = 'nvim-tree/nvim-web-devicons'}
    use { "nvim-lualine/lualine.nvim", wants = "nvim-tree/nvim-web-devicons" }              -- https://github.com/nvim-lualine/lualine.nvim

    use "rhysd/vim-clang-format"                                        -- https://github.com/rhysd/vim-clang-format
    use "fatih/vim-go"                                                  -- https://github.com/fatih/vim-go
    use "theprimeagen/harpoon"
    use "mbbill/undotree"
    use "tpope/vim-fugitive"
    use "tpope/vim-commentary"
    use "github/copilot.vim"

    -- use "edluffy/hologram.nvim"
    --
    use {
        'VonHeikemen/lsp-zero.nvim',
        branch = 'v1.x',
        requires = {
            -- LSP Support
            { 'neovim/nvim-lspconfig' },             -- Required
            { 'williamboman/mason.nvim' },           -- Optional
            { 'williamboman/mason-lspconfig.nvim' }, -- Optional

            -- Autocompletion
            { 'hrsh7th/nvim-cmp' },         -- Required
            { 'hrsh7th/cmp-nvim-lsp' },     -- Required
            { 'hrsh7th/cmp-buffer' },       -- Optional
            { 'hrsh7th/cmp-path' },         -- Optional
            { 'saadparwaiz1/cmp_luasnip' }, -- Optional
            { 'hrsh7th/cmp-nvim-lua' },     -- Optional

            -- Snippets
            { 'L3MON4D3/LuaSnip' },             -- Required
            { 'rafamadriz/friendly-snippets' }, -- Optional
        }
    }

    use {
        'glepnir/dashboard-nvim',
        event = 'VimEnter',
        config = function()
            require('dashboard').setup {
                theme = 'hyper',
                config = {
                    week_header = {
                        enable = true,
                    },
                    shortcut = {
                        { desc = ' Update', group = '@property', action = 'Lazy update', key = 'u' },
                        {
                            icon = ' ',
                            icon_hl = '@variable',
                            desc = 'Files',
                            group = 'Label',
                            action = 'Telescope find_files',
                            key = 'f',
                        },
                        {
                            desc = ' Apps',
                            group = 'DiagnosticHint',
                            action = 'Telescope app',
                            key = 'a',
                        },
                        {
                            desc = ' dotfiles',
                            group = 'Number',
                            action = 'Telescope dotfiles',
                            key = 'd',
                        },
                    },
                },
            }
        end,
        requires = { 'nvim-tree/nvim-web-devicons' }
    }
end)
