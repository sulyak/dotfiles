local ok, rt = pcall(require, 'rust-tools')
if not ok then
    vim.notify('Error loading mason.', 'error')
    return
end

rt.setup()
