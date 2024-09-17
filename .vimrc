" Enabling filetype support provides filetype-specific indenting,
" syntax highlighting, omni-completion and other useful settings.
filetype plugin indent on
syntax on

" `matchit.vim` is built-in so let's enable it!
" Hit `%` on `if` to jump to `else`.
runtime macros/matchit.vim

" various settings
set autoindent                 " Minimal automatic indenting for any filetype.
set backspace=indent,eol,start " Intuitive backspace behavior.
set hidden                     " Possibility to have more than one unsaved buffers.
set incsearch                  " Incremental search, hit `<CR>` to stop.
set ruler                      " Shows the current line number at the bottom-right
                               " of the screen.
set nu                         " Shows line numbers
set wildmenu                   " Great command-line completion, use `<Tab>` to move
                               " around and `<CR>` to validate.


set tabstop=4                  " show existing tab with 4 spaces width
set shiftwidth=4               " when indenting with '>', use 4 spaces width
set expandtab                  " On pressing tab, insert 4 spaces


"Vim Slime
let g:slime_target = "tmux"
let g:slime_default_config = {"socket_name": get(split($TMUX, ","), 0), "target_pane": ":.1"}

"FZF
nnoremap <silent> <C-f> :Files<CR>

"ALE
let g:ale_linters={
\ 'python': ['pylint'],
\}


" Plugins
call plug#begin()
Plug 'jpalardy/vim-slime'
Plug 'junegunn/fzf.vim'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'dense-analysis/ale'
Plug 'bluz71/vim-moonfly-colors', { 'as': 'moonfly' }
Plug 'airblade/vim-rooter'
Plug 'williamboman/mason.nvim'
Plug 'williamboman/mason-lspconfig.nvim'
Plug 'neovim/nvim-lspconfig' 
Plug 'simrat39/rust-tools.nvim'
Plug 'hrsh7th/nvim-cmp'
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'hrsh7th/cmp-nvim-lua'
Plug 'hrsh7th/cmp-nvim-lsp-signature-help'
Plug 'hrsh7th/cmp-vsnip'                             
Plug 'hrsh7th/cmp-path'                              
Plug 'hrsh7th/cmp-buffer'                            
Plug 'hrsh7th/vim-vsnip'
call plug#end()
"End Plugins

"color scheme settings
colorscheme moonfly
