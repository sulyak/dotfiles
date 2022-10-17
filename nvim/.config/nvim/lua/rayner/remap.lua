local nnoremap = require("rayner.keymap").nnoremap
local inoremap = require("rayner.keymap").inoremap
local tnoremap = require("rayner.keymap").tnoremap

nnoremap("<leader>", " ")

-- no arrow keys
nnoremap("<Up>", "<Nop>")
nnoremap("<Down>", "<Nop>")
nnoremap("<Right>", "<Nop>")
nnoremap("<Left>", "<Nop>")

-- from hammer
nnoremap("<C-k>", "<cmd>m .-2<CR>==")
nnoremap("<C-j>", "<cmd>m .+1<CR>==")
inoremap("<C-j>", "<Esc><cmd>m .+1<CR>==gi")
inoremap("<C-k>", "<Esc><cmd>m .-2<CR>==gi")

inoremap(",", ",<c-g>u")
inoremap(".", ".<c-g>u")
inoremap("!", "!<c-g>u")
inoremap("?", "?<c-g>u")
inoremap("'", "'<c-g>u")
inoremap('"', '"<c-g>u')

-- searching
nnoremap("n", "nzz")
nnoremap("N", "Nzz")

-- lsp
nnoremap("<leader>ln", "<cmd>lua vim.diagnostic.goto_next()<CR>")
nnoremap("<leader>lp", "<cmd>lua vim.diagnostic.goto_prev()<CR>")

-- telescope
nnoremap("<leader>ff", "<cmd>Telescope find_files<CR>")
nnoremap("<leader>fg", "<cmd>Telescope live_grep<CR>")
nnoremap("<leader>fd", "<cmd>Telescope diagnostics<CR>")
