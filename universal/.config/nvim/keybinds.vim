let mapleader = " "

""""""""""""""""""""""""""
" Custom bindings
""""""""""""""""""""""""""

" Browse airline tabs
nnoremap <C-p> :bn<CR>
nnoremap <C-o> :bp<CR>

" Comment block
" vnoremap <silent> <C-k> :Commentary<cr>
map <leader>k :Commentary<cr>

" Select all
map <C-a> <esc>ggVG<CR>

map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l
map <leader><leader>w <Plug>(easymotion-bd-w)
nnoremap S :%s//gI<Left><Left><Left>


