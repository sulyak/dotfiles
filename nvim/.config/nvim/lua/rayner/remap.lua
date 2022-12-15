local nnoremap = require("rayner.keymap").nnoremap
local inoremap = require("rayner.keymap").inoremap
local tnoremap = require("rayner.keymap").tnoremap
local vnoremap = require("rayner.keymap").vnoremap
local xnoremap = require("rayner.keymap").xnoremap

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

-- navigation
nnoremap("<C-d>", "<C-d>zz")
nnoremap("<C-u>", "<C-u>zz")

-- greatest remap ever
xnoremap("<leader>p", "\"_dP")
nnoremap("<leader>y", "\"+y")
vnoremap("<leader>y", "\"+y")

nnoremap("<leader>d", "\"_d")
vnoremap("<leader>d", "\"_d")

-- telescope
nnoremap("<leader>ff", "<cmd>Telescope find_files<CR>")
nnoremap("<leader>fg", "<cmd>Telescope live_grep<CR>")
nnoremap("<leader>fd", "<cmd>Telescope diagnostics<CR>")

-- tabs
nnoremap("<C-t>", "<cmd>tabnew<CR>")
nnoremap("<tab>", "<cmd>tabnext<CR>")
nnoremap("<S-tab>", "<cmd>tabprevious<CR>")
