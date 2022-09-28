local ok, cmp = pcall(require, 'cmp')
if not ok then
    vim.notify('Failed to load cmp.', 'error')
    return
end

cmp.setup {
    formatting = {
        format = function(entry, vim_item)
            vim_item.kind = require('lspkind').presets.default[vim_item.kind] .. ' ' .. vim_item.kind
            vim_item.menu = ({
                buffer = '[Buffer]',
                nvim_lsp = '[LSP]',
                ultisnips = '[UltiSnips]',
                look = '[Look]',
                path = '[Path]',
                spell = '[Spell]',
                calc = '[Calc]',
                emoji = '[Emoji]'
            })[entry.source.name]
            return vim_item
        end
    }, mapping = {
        ['<C-d>'] = cmp.mapping.scroll_docs(-4),
        ['<C-f>'] = cmp.mapping.scroll_docs(4),
        ['<C-Space>'] = cmp.mapping.complete(),
        ['<C-p>'] = cmp.mapping.select_prev_item(),
        ['<C-n>'] = cmp.mapping.select_next_item(),
        ['<Tab>'] = cmp.mapping.confirm({
            behavior = cmp.ConfirmBehavior.Insert,
            select = true
        }),
    },

    experimental = {
        ghost_text = true,
    },

    sources = {
        { name = 'buffer' },
        { name = 'path' },
        { name = 'nvim_lua' },
        { name = 'nvim_lsp' },
        { name = 'nvim_lsp_signature_help' },
    },
}

cmp.setup.cmdline('/', {
    mapping = cmp.mapping.preset.cmdline(),
    sources = {
        { name = 'buffer' },
    },
})

cmp.setup.cmdline(':', {
    mapping = cmp.mapping.preset.cmdline(),
    sources = {
        { name = 'path' },
        { name = 'cmdline',  max_item_count = 10, keyword_length = 3},
    }
})

-- setting up autopairs
local ok, cmp_autopairs = pcall(require, 'nvim-autopairs.completion.cmp')
if not ok then
    vim.notify('Error loading nvim-autopairs.complettion.cmp.', 'error')
    return
end

cmp.event:on (
    'confirm_done',
    cmp_autopairs.on_confirm_done()
)
