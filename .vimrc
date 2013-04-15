" General settings

set nocompatible  " not compatible with the old-fashion vi mode
set history=50    " keep 50 lines of command line history
set ruler         " show the cursor position all the time
set autoread      " auto read when file is changed from outside

" Formating
syntax on         " code highlighting
set showmatch     " highlight parenthesis, brackets

" Show indentation
set list                      " show the default invisible chars
set listchars=tab:>-,trail:-  " set the invisible chars to show (tabs ans trailing spaces)

" Indentation
" see https://github.com/ciaranm/detectindent
let g:detectindent_preferred_expandtab = 1
let g:detectindent_preferred_indent = 4
let g:detectindent_max_lines_to_analyse = 1024
autocmd BufReadPost * :DetectIndent
set softtabstop=4
set shiftwidth=4

set autoindent    " auto indentation
set copyindent    " copy the previous indentation on autoindenting
set smarttab      " insert tabs on the start of a line according to context

" Search
set hlsearch      " search highlighting
set incsearch     " incremental search
set ignorecase    " ignore case when searching
set smartcase     " ignore case if search pattern is all lowercase,case-sensitive otherwise

" Bells
set vb

" Status line
set statusline=%<%f%h%m%r%=%l,%c\ %P
set scrolloff=2
set laststatus=2
