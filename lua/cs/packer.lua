-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
    -- Packer can manage itself
    use 'wbthomason/packer.nvim'

    -- Telescope: fuzzy finder: https://github.com/nvim-telescope/telescope.nvim
    use {
        'nvim-telescope/telescope.nvim', tag = '0.1.1',
        requires = { { 'nvim-lua/plenary.nvim' } }
    }

    -- Color Scheme: https://github.com/catppuccin/nvim
    use {
        'catppuccin/nvim',
        as = 'catppuccin',
        config = function()
            vim.cmd('colorscheme catppuccin')
        end
    }


    -- Treesitter: language parsing, highlighting, etc
    use {
        'nvim-treesitter/nvim-treesitter',
        run = ':TSUpdate'
    }

    -- Treesitter: context of current method
    use 'nvim-treesitter/nvim-treesitter-context'

    -- LSP Zero: easy lsp setup: https://github.com/VonHeikemen/lsp-zero.nvim
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

    -- Trouble: show error messages in gutter https://github.com/folke/trouble.nvim
    use {
        "folke/trouble.nvim",
        requires = "nvim-tree/nvim-web-devicons",
        config = function()
            require("trouble").setup {
                -- your configuration comes here
                -- or leave it empty to use the default settings
                -- refer to the configuration section below
            }
        end
    }

    -- Gitsigns: https://github.com/lewis6991/gitsigns.nvim - visual git indicators
    use {
        'lewis6991/gitsigns.nvim',
        config = function()
            require('gitsigns').setup()
        end
    }

    -- Whichkey: https://github.com/folke/which-key.nvim - autocomplete key suggestions
    use {
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
    }

    -- Tree view: https://github.com/nvim-tree/nvim-tree.lua
    use 'nvim-tree/nvim-tree.lua'

    -- Indentation Guides: https://github.com/lukas-reineke/indent-blankline.nvim
    use 'lukas-reineke/indent-blankline.nvim'

    -- Feline: status bar: https://github.com/famiu/feline.nvim
    use 'feline-nvim/feline.nvim'

    -- Harpoon: markers, quickly jump between files
    use 'theprimeagen/harpoon'

    -- Undotree: visually see history of a file, branch, etc, bound to leader-u
    use 'mbbill/undotree'

    -- Fugitive: git client, bind to gs (git-status): https://github.com/tpope/vim-fugitive
    use 'tpope/vim-fugitive'

    -- Sneak: easy motion
    use 'justinmk/vim-sneak'
end)
