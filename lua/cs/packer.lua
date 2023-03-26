-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
    -- Packer can manage itself
    use 'wbthomason/packer.nvim'

    -- Telescope: fuzzy finder: https://github.com/nvim-telescope/telescope.nvim
    use {
        'nvim-telescope/telescope.nvim', tag = '0.1.1',
        requires = { {'nvim-lua/plenary.nvim'} }
    }

    -- Rose-pine color scheme: https://github.com/rose-pine/neovim
    use({
        'rose-pine/neovim',
        as = 'rose-pine',
        config = function()
            vim.cmd('colorscheme rose-pine')
        end
    })

    -- Treesitter: language parsing, highlighting, etc
    use({
        'nvim-treesitter/nvim-treesitter',
        {run = ':TSUpdate'}
    })

    -- Harpoon: markers, quickly jump between files
    use({
        'theprimeagen/harpoon'
    })

    -- Undotree: visually see history of a file, branch, etc, bound to leader-u
    use({
        'mbbill/undotree'
    })

    -- Fugitive: git client, bind to gs (git-status): https://github.com/tpope/vim-fugitive
    use({
        'tpope/vim-fugitive'
    })

    -- LSP Zero: easy lsp setup: https://github.com/VonHeikemen/lsp-zero.nvim
    use {
        'VonHeikemen/lsp-zero.nvim',
        branch = 'v1.x',
        requires = {
            -- LSP Support
            {'neovim/nvim-lspconfig'},             -- Required
            {'williamboman/mason.nvim'},           -- Optional
            {'williamboman/mason-lspconfig.nvim'}, -- Optional

            -- Autocompletion
            {'hrsh7th/nvim-cmp'},         -- Required
            {'hrsh7th/cmp-nvim-lsp'},     -- Required
            {'hrsh7th/cmp-buffer'},       -- Optional
            {'hrsh7th/cmp-path'},         -- Optional
            {'saadparwaiz1/cmp_luasnip'}, -- Optional
            {'hrsh7th/cmp-nvim-lua'},     -- Optional

            -- Snippets
            {'L3MON4D3/LuaSnip'},             -- Required
            {'rafamadriz/friendly-snippets'}, -- Optional
        }
    }
end)
