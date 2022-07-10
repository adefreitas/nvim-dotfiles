" enable syntax highlighting
syntax on

" tab spaces
set tabstop=4 
set softtabstop=4
set shiftwidth=4

" local vim config for directory
set exrc

" no error sounds
set noerrorbells

" navigate buffers without losing saved work
set hidden

" disable line wrapping
set nowrap

" get rid of swap files
set noswapfile
set nobackup

" define undo dir
set undodir=~/.nvim/undodir
set undofile

" enabling incremental search
set incsearch
set nohlsearch

" scroll padding
set scrolloff=8

" set 100 char visual column
set colorcolumn=100
set signcolumn=yes

" enable line numbers
set number
set numberwidth=4

" enable autoident
set smartindent
set shiftwidth=4

" splits
set splitbelow
set splitright

" enable mouse support
set mouse=a

" case insensitive search unless capital letters are used
set ignorecase
set smartcase

" general settings
" hide vim mode info
set noshowmode

call plug#begin('~/.vim/plugged')
	" Telescope requires plenary to function
	Plug 'nvim-lua/plenary.nvim'
	" The main Telescope plugin
	Plug 'nvim-telescope/telescope.nvim'
	" An optional plugin recommended by Telescope docs
	Plug 'nvim-telescope/telescope-fzf-native.nvim', {'do': 'make' }
	" git integration
	Plug 'tpope/vim-fugitive'
	" mode/file/branch info
	Plug 'nvim-lualine/lualine.nvim'
	" if you want to have icons in your statusline choose one of these
	Plug 'kyazdani42/nvim-web-devicons'
	" git decorations
	Plug 'lewis6991/gitsigns.nvim'
	" LSP language service provider
	Plug 'neovim/nvim-lspconfig'
	" Autocompletion
	Plug 'hrsh7th/nvim-cmp'
	Plug 'hrsh7th/cmp-nvim-lsp'
	Plug 'L3MON4D3/LuaSnip'
	Plug 'saadparwaiz1/cmp_luasnip'
	Plug 'onsails/lspkind-nvim'
	" Treesitter
	Plug 'nvim-treesitter/nvim-treesitter', { 'do': ':TSUpdate' }
	" commenter
	Plug 'terrortylor/nvim-comment'
	" tabs
	Plug 'akinsho/bufferline.nvim', { 'tag': 'v2.*' }
	" tree view
	Plug 'kyazdani42/nvim-tree.lua'
	" color themes
	Plug 'olimorris/onedarkpro.nvim' " https://github.com/olimorris/onedarkpro.nvim
	Plug 'romgrk/doom-one.vim' " https://github.com/romgrk/doom-one.vim
	Plug 'bluz71/vim-moonfly-colors' " https://github.com/bluz71/vim-moonfly-colors
	Plug 'bluz71/vim-nightfly-guicolors' " https://github.com/bluz71/vim-nightfly-guicolors
	Plug 'ghifarit53/tokyonight-vim'
	Plug 'ntk148v/vim-horizon'
call plug#end()

set background=dark
" Copy + pasting bindings CTRL + C and CTRL + V
vnoremap <C-c> "+y
map <C-v> "+p

lua require('ordo')

let mapleader = ' '

" Saving on all modes
nnoremap <silent><c-s> :<c-u>update<cr>
vnoremap <silent><c-s> <c-c>:update<cr>gv
inoremap <silent><c-s> <c-o>:update<cr>
" Switching between open windows
nnoremap <leader>h :wincmd h<Cr>
nnoremap <leader>j :wincmd j<Cr>
nnoremap <leader>k :wincmd k<Cr>
nnoremap <leader>l :wincmd l<Cr>
" find files
nnoremap <C-p> :Telescope find_files<Cr>

" These commands will navigate through buffers in order regardless of which mode you are using
" e.g. if you change the order of buffers :bnext and :bprevious will not respect the custom ordering
nnoremap <silent>[b :BufferLineCycleNext<CR>
nnoremap <silent>b] :BufferLineCyclePrev<CR>

nnoremap <C-b> :NvimTreeToggle<cr>

" let g:lightline = { 'colorscheme': 'moonfly' }
" require('lualine').setup({options = {theme = 'moonfly'}})

set termguicolors

let g:tokyonight_style = 'storm' " available: night, storm
let g:tokyonight_enable_italic = 1

colorscheme horizon

