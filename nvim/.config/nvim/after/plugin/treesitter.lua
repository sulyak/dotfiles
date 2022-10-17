local ok, treesitter = pcall(require, 'nvim-treesitter.configs')
if not ok then
    vim.notify('Failed to load nvim-treesitter.', 'error')
    return
end

treesitter.setup {
    ensure_installed = { 'c', 'lua', 'rust', 'python' },
    
    auto_install = true,
    
    highlight = {
        enable = true,
    }
}
