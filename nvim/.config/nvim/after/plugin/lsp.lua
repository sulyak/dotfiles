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


local opts = { noremap=true, silent=true }
vim.keymap.set('n', '<leader>e', vim.diagnostic.open_float, opts)
vim.keymap.set('n', '[d', vim.diagnostic.goto_prev, opts)
vim.keymap.set('n', ']d', vim.diagnostic.goto_next, opts)

local on_attach = function(client, bufnr)
    local bufopts = { noremap=true, silent=true, buffer=bufnr }
    vim.keymap.set('n', 'gD', vim.lsp.buf.declaration, bufopts)
    vim.keymap.set('n', 'gd', vim.lsp.buf.definition, bufopts)
    vim.keymap.set('n', 'K', vim.lsp.buf.hover, bufopts)
    vim.keymap.set('n', 'gi', vim.lsp.buf.implementation, bufopts)

    vim.keymap.set('n', '<leader>rn', vim.lsp.buf.rename, bufopts)
    vim.keymap.set('n', '<leader>ca', vim.lsp.buf.code_action, bufopts)
    vim.keymap.set('n', 'gr', vim.lsp.buf.references, bufopts)
    vim.keymap.set('n', '<leader>f', function() vim.lsp.buf.format { async = true } end, bufopts)
end


mason_lspconfig.setup_handlers({
    function (server_name) -- default handler (optional)
        require("lspconfig")[server_name].setup {
            on_attach = on_attach()
        }
    end,
})
