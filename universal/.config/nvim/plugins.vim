call plug#begin('~/.config/nvim/plugged')
" Visual Stuff
Plug 'dracula/vim', { 'as': 'dracula' }
Plug 'ryanoasis/vim-devicons'
Plug 'ap/vim-css-color'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'

" Auto completion and auto styling
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'tpope/vim-commentary'
Plug 'Yggdroot/indentLine'

" Functional Stuff
Plug 'kevinhwang91/rnvimr'
Plug 'majutsushi/tagbar'
Plug 'djoshea/vim-autoread'
Plug 'lambdalisue/suda.vim'
Plug 'mhinz/vim-startify'
Plug 'vimwiki/vimwiki'

" Movement Tools
Plug 'easymotion/vim-easymotion'

" Plugins I just kind of didn't like
"Plug 'jistr/vim-nerdtree-tabs'
"Plug 'scrooloose/nerdtree'
"   I personally like using ranger instead of nerdtree
"Plug 'ycm-core/YouCompleteMe'
"   Too cumbresome, coc is better anyway
"Plug 'thaerkh/vim-workspace'
"   Too cumbersome, might change my mind when working on larger projects
"Plug 'aurieh/discord.nvim', {'do': ':UpdateRemotePlugins'}
"   Discord Rich Presence for an editor is kind of not important, and causes
"   problems when launching vim if it experiences hicups. (god forbid I edit
"   offline)
call plug#end()
