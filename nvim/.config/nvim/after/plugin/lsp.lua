local ok, mason = pcall(require, 'mason')
if not ok then
    vim.notify('Error loading mason.', 'error')
    return
end
mason.setup()

local ok, mason_lspconfig = pcall(require, 'mason-lspconfig')
if not ok then
    vim.notify('Error loading mason-lspconfig.', 'error')
    return
end
mason_lspconfig.setup()

mason_lspconfig.setup_handlers({
    function (server_name) -- default handler (optional)
        require("lspconfig")[server_name].setup {}
    end,
})
