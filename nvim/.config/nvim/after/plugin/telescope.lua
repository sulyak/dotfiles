local ok, telescope = pcall(require, 'telescope')
if not ok then
    vim.notify('Error loading telescope.\n', 'error')
    return
end
