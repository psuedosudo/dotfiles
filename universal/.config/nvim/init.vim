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
"Plug 'jistr/vim-nerdtree-tabs'
"Plug 'scrooloose/nerdtree'
Plug 'vim-ruby/vim-ruby'
Plug 'ervandew/supertab'
Plug 'majutsushi/tagbar'
Plug 'posva/vim-vue'
Plug 'severin-lemaignan/vim-minimap'
Plug 'djoshea/vim-autoread'
Plug 'slim-template/vim-slim'
"Plug 'thaerkh/vim-workspace'
Plug 'lambdalisue/suda.vim'
Plug 'mhinz/vim-startify'
Plug 'vimwiki/vimwiki'
Plug 'easymotion/vim-easymotion'
Plug 'airblade/vim-gitgutter'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'ap/vim-css-color'
"Plug 'aurieh/discord.nvim', {'do': ':UpdateRemotePlugins'}

call plug#end()
"""""""""""""""""""""""""""
let mapleader = " "

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

" Make wildmenu behave like bash completion. Finding commands are so easy now.
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
"set autoread
"au CursorHold * checktime

" Turn on syntax hightlighting.
set syntax=on
set nowrap
set tabstop=2
set softtabstop=2
set shiftwidth=2
set nocindent

set cursorline
set cursorcolumn

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
let g:indentLine_char='┆'

" Syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list=1
let g:syntastic_auto_loc_list=1
let g:syntastic_check_on_open=1
let g:syntastic_check_on_wq=0

let g:suda_smart_edit = 1

" Make Ranger replace Netrw and be the file explorer
let g:rnvimr_enable_ex = 1

" Make Ranger open in parent neovim
let g:rnvimr_vanilla = 1

" Make Ranger to be hidden after picking a file
let g:rnvimr_enable_picker = 1

" Disable a border for floating window
let g:rnvimr_draw_border = 1

" Hide the files included in gitignore
let g:rnvimr_hide_gitignore = 1

" Change the border's color
let g:rnvimr_border_attr = {'fg': 14, 'bg': -1}

" Make Neovim wipe the buffers corresponding to the files deleted by Ranger
let g:rnvimr_enable_bw = 1

" Add a shadow window, value is equal to 100 will disable shadow
let g:rnvimr_shadow_winblend = 70

" Draw border with both
let g:rnvimr_ranger_cmd = 'ranger --cmd="set draw_borders both"'

" Link CursorLine into RnvimrNormal highlight in the Floating window
highlight link RnvimrNormal CursorLine

nnoremap <silent> <M-o> :RnvimrToggle<CR>
tnoremap <silent> <M-o> <C-\><C-n>:RnvimrToggle<CR>

" Resize floating window by all preset layouts
tnoremap <silent> <M-i> <C-\><C-n>:RnvimrResize<CR>

" Resize floating window by special preset layouts
tnoremap <silent> <M-l> <C-\><C-n>:RnvimrResize 1,8,9,11,5<CR>

" Resize floating window by single preset layout
tnoremap <silent> <M-y> <C-\><C-n>:RnvimrResize 6<CR>

" Map Rnvimr action
let g:rnvimr_action = {
            \ '<C-t>': 'NvimEdit tabedit',
            \ '<C-x>': 'NvimEdit split',
            \ '<C-v>': 'NvimEdit vsplit',
            \ 'gw': 'JumpNvimCwd',
            \ 'yw': 'EmitRangerCwd'
            \ }

" Add views for Ranger to adapt the size of floating window
let g:rnvimr_ranger_views = [
            \ {'minwidth': 90, 'ratio': []},
            \ {'minwidth': 50, 'maxwidth': 89, 'ratio': [1,1]},
            \ {'maxwidth': 49, 'ratio': [1]}
            \ ]

" Customize the initial layout
let g:rnvimr_layout = {
            \ 'relative': 'editor',
            \ 'width': float2nr(round(0.7 * &columns)),
            \ 'height': float2nr(round(0.7 * &lines)),
            \ 'col': float2nr(round(0.15 * &columns)),
            \ 'row': float2nr(round(0.15 * &lines)),
            \ 'style': 'minimal'
            \ }

" Customize multiple preset layouts
" '{}' represents the initial layout
let g:rnvimr_presets = [
            \ {'width': 0.600, 'height': 0.600},
            \ {},
            \ {'width': 0.800, 'height': 0.800},
            \ {'width': 0.950, 'height': 0.950},
            \ {'width': 0.500, 'height': 0.500, 'col': 0, 'row': 0},
            \ {'width': 0.500, 'height': 0.500, 'col': 0, 'row': 0.5},
            \ {'width': 0.500, 'height': 0.500, 'col': 0.5, 'row': 0},
            \ {'width': 0.500, 'height': 0.500, 'col': 0.5, 'row': 0.5},
            \ {'width': 0.500, 'height': 1.000, 'col': 0, 'row': 0},
            \ {'width': 0.500, 'height': 1.000, 'col': 0.5, 'row': 0},
            \ {'width': 1.000, 'height': 0.500, 'col': 0, 'row': 0},
            \ {'width': 1.000, 'height': 0.500, 'col': 0, 'row': 0.5}
            \ ]

" Fullscreen for initial layout
" let g:rnvimr_layout = {
"            \ 'relative': 'editor',
"            \ 'width': &columns,
"            \ 'height': &lines - 2,
"            \ 'col': 0,
"            \ 'row': 0,
"            \ 'style': 'minimal'
"            \ }
"
" Only use initial preset layout
" let g:rnvimr_presets = [{}]


""""""""""""""""""""""""""
" Custom bindings
""""""""""""""""""""""""""

" Browse airline tabs
:nnoremap <C-p> :tabNext<CR>
:nnoremap <C-o> :tabprevious<CR>

" Comment block
vnoremap <silent> <C-k> :Commentary<cr>

" Toggle Nerdtree
noremap <silent> <C-f> ::NERDTreeToggle<CR>
cnoremap w!! w !sudo tee > /dev/null %

" Select all
map <C-a> <esc>ggVG<CR>
" set ttymouse=sgr
set mouse=a

map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l
map <leader><leader>w <Plug>(easymotion-bd-w)

set splitbelow splitright

set colorcolumn=90

autocmd InsertEnter * norm zz
autocmd BufWritePre * %s/\s+$//e
nnoremap S :%s//gI<Left><Left><Left>

let g:vimwiki_list = [{'auto_diary_index': 1}]
