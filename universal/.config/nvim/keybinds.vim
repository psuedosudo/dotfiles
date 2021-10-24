
""""""""""""""""""""""""""
" Custom bindings
""""""""""""""""""""""""""

" Leader Key as space
let mapleader = " "

" Browse airline tabs using buffers as tabs
nnoremap <C-p> :bn<CR>
nnoremap <C-o> :bp<CR>

" Comment block
" vnoremap <silent> <C-k> :Commentary<cr>
map <leader>k :Commentary<cr>

" Select all
map <C-a> <esc>ggVG<CR>

" Easier split navigation
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l

" EasyMotion keybind remapped for bi-directionality
map <leader><leader>w <Plug>(easymotion-bd-w)

" Quick Mass Replace
nnoremap S :%s//gI<Left><Left><Left>

" Reload nvim config dynamicly with <leader>sv
set wildcharm=<tab>
nnoremap <leader>sv :source $MYVIMRC<CR>:AirlineToggle<CR>:AirlineToggle<CR>:set filetype=<tab><CR>
