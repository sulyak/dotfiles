local ok, lualine = pcall(require, 'lualine')
if not ok then
    vim.notify('Error loading lualine.', 'error')
    return
end

lualine.setup {
    theme = 'tokyonight-night'
}
