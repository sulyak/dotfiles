local nnoremap = require("rayner.keymap").nnoremap
local inoremap = require("rayner.keymap").inoremap
local tnoremap = require("rayner.keymap").tnoremap

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

-- searching
nnoremap("n", "nzz")
nnoremap("N", "Nzz")

