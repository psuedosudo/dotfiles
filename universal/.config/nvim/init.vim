
"""""""""""""""""""""""""""
" Plugins 
"""""""""""""""""""""""""""

source ~/.config/nvim/plugins.vim
source ~/.config/nvim/keybinds.vim
source ~/.config/nvim/rnvimrc.vim

"""""""""""""""""""""""""""

" disable bells
autocmd! GUIEnter * set vb t_vb=

" Do not make vim compatible with vi.
set nocompatible
filetype plugin on

" Do not create .swp files
set noswapfile
set noshowmode

" Number the lines.
set number
set relativenumber

" Show auto complete menus.
set wildmenu

" Make wildmenu behave like bash completion. 
set wildmode=longest,list,full

" ALWAYS spaces
set expandtab

" Fix backspace behavior
set backspace=indent,eol,start

" Use system clipboard
set clipboard+=unnamedplus

" Keep Undo history on buffer change
set hidden

" Reload files after change on Disk
set autoread
"au CursorHold * checktime

" Turn on syntax hightlighting.
set syntax=on
set nowrap
set tabstop=2
set softtabstop=2
set shiftwidth=2
set nocindent

" Enable row and column position highlighting
set cursorline
set cursorcolumn

" Concealment settings
" set concealcursor=""
let g:indentLine_concealcursor=""
let g:indentLine_conceallevel=2
" let g:vimwiki_conceallevel=0

" let g:indentLine_setConceal=1
" let g:indentLine_concealcursor="incv"

" Speed optimization
" set ttyfast
" set lazyredraw

" Theme
"set background=dark
set termguicolors
colorscheme dracula 
hi Normal guibg=NONE ctermbg=NONE
set guifont=DejaVu\ Sans\ Mono\ for\ Powerline:h14
" set guifont=Ubuntu\ Mono:h12

" Airline
set laststatus=1
let g:airline#extensions#tabline#enabled=1
let g:airline_theme='dracula'
let g:airline_powerline_fonts=0
let g:airline#extensions#branch#enabled=1

" Indent Guides
let g:indentLine_enabled=1
let g:indentLine_color_term=235
let g:indentLine_char='|'

" Syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list=1
let g:syntastic_auto_loc_list=1
let g:syntastic_check_on_open=1
let g:syntastic_check_on_wq=0

let g:suda_smart_edit = 1

" set ttymouse=sgr
set mouse=a

set splitbelow splitright

set colorcolumn=90
set wrap
set linebreak
set textwidth=0
set wrapmargin=0

autocmd InsertEnter * norm zz
autocmd BufWritePre * %s/\s+$//e

let g:vimwiki_list = [{'auto_diary_index': 1}]
