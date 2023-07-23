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
