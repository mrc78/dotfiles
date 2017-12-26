set nocompatible
filetype off

" https://github.com/gmarik/Vundle.vim
"  mkdir -p ~/.config/nvim/bundle
"  cd ~/.config/nvim/bundle
"  git clone https://github.com/gmarik/Vundle.vim
set rtp+=~/.config/nvim/bundle/Vundle.vim
call vundle#begin('~/.config/nvim/bundle')
Plugin 'gmarik/Vundle.vim'
Plugin 'bling/vim-airline'
Plugin 'majutsushi/tagbar.git'
Plugin 'tpope/vim-fugitive'                    " git
Plugin 'tpope/vim-commentary.git'
Plugin 'tpope/vim-endwise.git'
Plugin 'vim-syntastic/syntastic'
Plugin 'ConradIrwin/vim-bracketed-paste'
Plugin 'direnv/direnv.vim'
Plugin 'chr4/sslsecure.vim'
Plugin 'vim-scripts/indentpython.vim'          " python
Plugin 'ekalinin/Dockerfile.vim'               " Dockerfile
Plugin 'elzr/vim-json.git'                     " json
Plugin 'plasticboy/vim-markdown'               " markdown
Plugin 'hashivim/vim-terraform'                " terraform
call vundle#end()

filetype plugin indent on
set softtabstop=4
set tabstop=4
set shiftwidth=4
set expandtab
set nohlsearch
set ignorecase
set noerrorbells
set novisualbell
set termguicolors

colorscheme industry
set background=dark

let mapleader = "\<Space>"

nmap <F8> :TagbarToggle<CR>
"set t_RV=

" airline
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

" syntastic
let g:syntastic_always_populate_loc_list = 0
let g:syntastic_auto_loc_list = 0
let g:syntastic_check_on_open = 0
let g:syntastic_check_on_wq = 0

" disable mouse
set mouse=

" disable folding for vim-markdown
let g:vim_markdown_folding_disabled = 1

" vim-terraform
let g:terraform_align=1
" vim-commentary vs vim-terraform
autocmd FileType terraform setlocal commentstring=#%s

