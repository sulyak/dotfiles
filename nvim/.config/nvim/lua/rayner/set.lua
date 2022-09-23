set = vim.opt

vim.g.mapleader = " "

-- netrw
vim.g.netrw_fastbrowse = 2
vim.g.netrw_liststyle = 3
vim.g.netrw_keepdir = 0
vim.g.netrw_winsize = 15
vim.g.netrw_banner = 0
vim.g.netrw_localcopydircmd = 'cp -r'
vim.g.netrw_preview = 1

-- fancy numbers
set.nu = true
set.relativenumber = true

-- what 
set.swapfile = false
set.backup = false
set.undofile = true

-- making tabs 4 (four) spaces
set.tabstop = 4
set.softtabstop = 4
set.shiftwidth = 4
set.expandtab = true
set.smartindent = true
set.wrap = false

set.smarttab = true
set.shiftround = true
set.autoindent = true

-- sane search
set.ignorecase = true
set.smartcase = true
set.hlsearch = true
set.incsearch = true
set.wildmenu = true

set.backspace="indent,eol,start"

set.autoread = true
set.scrolloff = 8
set.guicursor = ""

-- forbidden magic
set.mouse = "a"

set.signcolumn="yes:1"
