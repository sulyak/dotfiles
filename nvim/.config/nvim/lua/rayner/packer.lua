local ensure_packer = function()
    local fn = vim.fn
    local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
    if fn.empty(fn.glob(install_path)) > 0 then
	fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
	vim.cmd [[packadd packer.nvim]]
	return true
    end
    return false
end

local packer_bootstrap = ensure_packer()

return require('packer').startup(function()
    use 'wbthomason/packer.nvim'

    -- cmp
    use 'hrsh7th/nvim-cmp'
    use 'hrsh7th/cmp-nvim-lsp'
    use 'hrsh7th/cmp-nvim-lua'
    use 'hrsh7th/cmp-nvim-lsp-signature-help'
    use 'hrsh7th/cmp-buffer'
    use 'hrsh7th/cmp-cmdline'
    use 'hrsh7th/cmp-path'

    -- lsp
    use 'onsails/lspkind.nvim'
    use 'neovim/nvim-lspconfig'

    -- mason
    use 'williamboman/mason.nvim'
    use 'williamboman/mason-lspconfig.nvim'

    -- autopairs
    use {
        'windwp/nvim-autopairs',
        config = function() require('nvim-autopairs').setup {} end
    }

    -- theming
    use 'folke/tokyonight.nvim'
    use 'nvim-lualine/lualine.nvim'
    use 'kyazdani42/nvim-web-devicons'
    
    if packer_bootstrap then
	require('packer').sync()
    end
end)
