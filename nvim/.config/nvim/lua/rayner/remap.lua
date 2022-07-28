local nnoremap = require("rayner.keymap").nnoremap
local inoremap = require("rayner.keymap").inoremap
local tnoremap = require("rayner.keymap").tnoremap

-- project view full windows 
nnoremap("<leader>pv", "<cmd>Ex<Cr>")
nnoremap("<C-b>", "<cmd>Lex<Cr>")

-- no arrow keys
nnoremap("<Up>", "<Nop>")
nnoremap("<Down>", "<Nop>")
nnoremap("<Right>", "<Nop>")
nnoremap("<Left>", "<Nop>")

-- escaping vim verse
tnoremap("<Esc>", "<C-\\><C-n>")
tnoremap("<C-w>", "<C-\\><C-n><C-w>")

-- from hammer
nnoremap("<C-k>", "<cmd>m .-2<CR>==")
nnoremap("<C-j>", "<cmd>m .+1<CR>==")
inoremap("<C-j>", "<Esc><cmd>m .+1<CR>==gi")
inoremap("<C-k>", "<Esc><cmd>m .-2<CR>==gi")

-- searching
nnoremap("n", "nzz")
nnoremap("N", "Nzz")

-- for the tabs
nnoremap("<C-t>", "<cmd>tabnew<CR>")
nnoremap("<tab>", "<C-PageDown>")
nnoremap("<C-tab>", "C-PageUp>")

nnoremap("<C-q>", "<C-w>q")
