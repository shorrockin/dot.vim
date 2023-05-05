local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
    vim.fn.system({
        "git",
        "clone",
        "--filter=blob:none",
        "https://github.com/folke/lazy.nvim.git",
        "--branch=stable", -- latest stable release
        lazypath,
    })
end
vim.opt.rtp:prepend(lazypath)

local plugins = {
    -- Telescope: fuzzy finder: https://github.com/nvim-telescope/telescope.nvim
    {
        'nvim-telescope/telescope.nvim',
        tag = '0.1.1',
        dependencies = { { 'nvim-lua/plenary.nvim' } }
    },

    -- Color Scheme: https://github.com/catppuccin/nvim
    {
        'catppuccin/nvim',
        name = 'catppuccin',
        config = function()
            vim.cmd('colorscheme catppuccin')
        end
    },

    -- Treesitter: language parsing, highlighting, etc
    {
        'nvim-treesitter/nvim-treesitter',
        build = ':TSUpdate'
    },

    -- Treesitter: context of current method
    'nvim-treesitter/nvim-treesitter-context',

    -- LSP Zero: easy lsp setup: https://github.com/VonHeikemen/lsp-zero.nvim
    {
        'VonHeikemen/lsp-zero.nvim',
        branch = 'v1.x',
        dependencies = {
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
    },

    -- Trouble: show error messages in gutter https://github.com/folke/trouble.nvim
    {
        "folke/trouble.nvim",
        dependencies = "nvim-tree/nvim-web-devicons",
        config = function()
            require("trouble").setup {
                -- your configuration comes here
                -- or leave it empty to use the default settings
                -- refer to the configuration section below
            }
        end
    },

    -- Gitsigns: https://github.com/lewis6991/gitsigns.nvim - visual git indicators
    {
        'lewis6991/gitsigns.nvim',
        config = function()
            require('gitsigns').setup()
        end
    },

    -- Whichkey: https://github.com/folke/which-key.nvim - autocomplete key suggestions
    {
        "folke/which-key.nvim",
        config = function()
            vim.o.timeout = true
            vim.o.timeoutlen = 300
            require("which-key").setup {
                -- your configuration comes here
                -- or leave it empty to use the default settings
                -- refer to the configuration section below
            }
        end
    },

    {
        'saecki/crates.nvim',
        tag = 'v0.3.0',
        dependencies = { 'nvim-lua/plenary.nvim' },
        config = function()
            require('crates').setup()
        end,
    },

    -- Tree view: https://github.com/nvim-tree/nvim-tree.lua
    'nvim-tree/nvim-tree.lua',

    -- Indentation Guides: https://github.com/lukas-reineke/indent-blankline.nvim
    'lukas-reineke/indent-blankline.nvim',

    -- Feline: status bar: https://github.com/famiu/feline.nvim
    'feline-nvim/feline.nvim',

    -- Harpoon: markers, quickly jump between files
    'theprimeagen/harpoon',

    -- Undotree: visually see history of a file, branch, etc, bound to leader-u
    'mbbill/undotree',

    -- Fugitive: git client, bind to gs (git-status): https://github.com/tpope/vim-fugitive
    'tpope/vim-fugitive',

    -- Sneak: easy motion
    'justinmk/vim-sneak',

    -- Google copilot
    'github/copilot.vim',
}

local opts = {}
require("lazy").setup(plugins, opts)
