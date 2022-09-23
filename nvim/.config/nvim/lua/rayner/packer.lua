vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function()
    -- the packer himself
    use 'wbthomason/packer.nvim'

    -- colors :)
    use 'folke/tokyonight.nvim'
    use {
        'nvim-treesitter/nvim-treesitter',
        run = function() require('nvim-treesitter.install').update({ with_sync = true }) end
    }

    -- cmp
    use 'hrsh7th/nvim-cmp'
    use 'hrsh7th/cmp-buffer'
    use 'hrsh7th/cmp-path'
    use 'hrsh7th/cmp-cmdline'
    use 'hrsh7th/cmp-nvim-lsp'
    use 'hrsh7th/cmp-nvim-lsp-signature-help'

    -- autopair
    use 'windwp/nvim-autopairs'

    -- lsp -> mason
    use 'williamboman/mason.nvim'
    use 'williamboman/mason-lspconfig.nvim'
    use 'neovim/nvim-lspconfig'
    use 'onsails/lspkind.nvim'

    -- pls no highlight how is this not built in
    use 'jesseleite/vim-noh'

    -- line
    use 'nvim-lualine/lualine.nvim'

    -- discord presence :)
    use 'andweeb/presence.nvim'

end)
