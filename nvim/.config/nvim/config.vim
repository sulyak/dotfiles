set exrc

set relativenumber
set nu

set hidden
set noerrorbells

set noswapfile
set nobackup
set undodir=~/.vim/undodir
set undofile

set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
set smartindent
set nowrap

set showmatch
set showcmd

set smarttab
set shiftround
set autoindent

set colorcolumn=80
set signcolumn=yes

" sane search
set ignorecase
set smartcase
set hlsearch
set incsearch

set backspace=indent,eol,start

set scrolloff=8

augroup CursorLine
  au!
  au VimEnter,WinEnter,BufWinEnter * setlocal cursorline
  au WinLeave * setlocal nocursorline
augroup END

fun! TrimWhitespace()
    let l:save = winsaveview()
    keeppatterns %s/\s\+$//e
    call winrestview(l:save)
endfun

augroup TRIM_SPACES
    autocmd!
    autocmd BufWritePre * :call TrimWhitespace()
augroup END

set autoread " auto read a file when it changed from outside
set wildmenu

set ttimeoutlen=5

" disable arrow keys
noremap <Up> <Nop>
noremap <Down> <Nop>
noremap <Left> <Nop>
noremap <Right> <Nop>

call plug#begin('~/.vim/plugged')
    Plug 'tomasiser/vim-code-dark'

    Plug 'nvim-lua/plenary.nvim'
    Plug 'nvim-telescope/telescope.nvim'
    Plug 'nvim-lua/popup.nvim'
    Plug 'nvim-telescope/telescope-fzy-native.nvim'

    Plug 'windwp/nvim-autopairs'
    Plug 'neovim/nvim-lspconfig'
    Plug 'hrsh7th/nvim-cmp'
    Plug 'hrsh7th/cmp-buffer'
    Plug 'hrsh7th/cmp-path'
    Plug 'hrsh7th/cmp-nvim-lsp'
    Plug 'nvim-treesitter/nvim-treesitter'

    Plug 'williamboman/nvim-lsp-installer'
    Plug 'hrsh7th/cmp-nvim-lsp-signature-help'
    Plug 'onsails/lspkind-nvim'

    Plug 'jesseleite/vim-noh'

    Plug 'andweeb/presence.nvim'
call plug#end()

colorscheme codedark
let mapleader = " "
nnoremap <leader>ff :Telescope find_files<CR>
nnoremap <leader>ps :Telescope live_grep<CR>
nnoremap <leader>t :tabnew<CR>
nnoremap <leader>q :tabclose<CR>

" forbidden magic
set mouse=a

" for terminal mode
tnoremap <Esc> <C-\><C-n>
tnoremap <C-w> <C-\><C-n><C-w>

" better tab navigation
nnoremap <tab> <C-PageDown>
nnoremap <S-tab> <C-PageUp>

" from hammer
nnoremap <C-j> :m .+1<CR>==
nnoremap <C-k> :m .-2<CR>==
inoremap <C-j> <Esc>:m .+1<CR>==gi
inoremap <C-k> <Esc>:m .-2<CR>==gi
vnoremap <C-j> :m '>+1<CR>gv=gv
vnoremap <C-k> :m '<-2<CR>gv=gv

noremap n nzz
noremap N Nzz

