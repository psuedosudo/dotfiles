"""""""""""""""""""""""""""
" Plugins 
"""""""""""""""""""""""""""
call plug#begin('~/.config/nvim/plugged')

"Plug 'embark-theme/vim', { 'as': 'embark' }
Plug 'dracula/vim', { 'as': 'dracula' }
Plug 'ryanoasis/vim-devicons'
Plug 'kevinhwang91/rnvimr'
Plug 'tyrannicaltoucan/vim-quantum'
Plug 'tpope/vim-fugitive'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'tpope/vim-commentary'
"Plug 'ycm-core/YouCompleteMe'
Plug 'Yggdroot/indentLine'
Plug 'jistr/vim-nerdtree-tabs'
Plug 'scrooloose/nerdtree'
Plug 'vim-ruby/vim-ruby'
Plug 'ervandew/supertab'
Plug 'majutsushi/tagbar'
Plug 'posva/vim-vue'
Plug 'severin-lemaignan/vim-minimap'
Plug 'djoshea/vim-autoread'
Plug 'slim-template/vim-slim'

call plug#end()
"""""""""""""""""""""""""""

" disable bells
autocmd! GUIEnter * set vb t_vb=

" Do not make vim compatible with vi.
" set nocompatible

" Do not create .swp files
set noswapfile
set noshowmode

" Number the lines.
set number

" Show auto complete menus.
set wildmenu

" Make wildmenu behave like bash completion. Finding commands are so easy now.
set wildmode=list:longest

" ALWAYS spaces
set expandtab

" Fix backspace behavior
set backspace=indent,eol,start

" Use system clipboard 
set clipboard=unnamedplus

" Keep Undo history on buffer change
set hidden

" Reload files after change on Disk
"set autoread
"au CursorHold * checktime

" Turn on syntax hightlighting.
set syntax=on
set nowrap
set tabstop=2
set shiftwidth=2
set nocindent

" Speed optimization
" set ttyfast
" set lazyredraw

" Theme
set background=dark
"set termguicolors
colorscheme dracula 
set guifont=DejaVu\ Sans\ Mono\ for\ Powerline:h14
" set guifont=Ubuntu\ Mono:h12

" Airline
set laststatus=2
let g:airline#extensions#tabline#enabled=1
let g:airline_theme='dracula'
let g:airline_powerline_fonts=1
let g:airline#extensions#branch#enabled=1

" Indent Guides
let g:indentLine_enabled=1
let g:indentLine_color_term=235
let g:indentLine_char='┆'

" Syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list=1
let g:syntastic_auto_loc_list=1
let g:syntastic_check_on_open=1
let g:syntastic_check_on_wq=0

""""""""""""""""""""""""""
" Custom bindings
""""""""""""""""""""""""""

" Browse airline tabs
:nnoremap <C-p> :tabNext<CR>
:nnoremap <C-o> :tabprevious<CR>

" Map Control S for save
noremap <silent> <C-S> :update<CR>
vnoremap <silent> <C-S> <C-C>:update<CR>
inoremap <silent> <C-S>  <C-O>:update<CR>

" Comment block
vnoremap <silent> <C-k> :Commentary<cr>

" Close current buffer
noremap <silent> <C-q> :Bclose!<CR>

" Toggle Nerdtree
noremap <silent> <C-f> ::NERDTreeToggle<CR>

" Select all
map <C-a> <esc>ggVG<CR>
" set ttymouse=sgr
set mouse=a
