inoremap jj <Esc>

set number
set tabstop=4
set smartindent
set shiftwidth=4
set expandtab

let mapleader="\<Space>"

call plug#begin('~/.config/nvim/plugged')

Plug 'Valloric/YouCompleteMe'
" Plug 'honza/vim-snippets'
Plug 'rust-lang/rust.vim'
Plug 'fatih/vim-go'
Plug 'racer-rust/vim-racer'

call plug#end()

" rust settings
set hidden
let g:racer_cmd = "/usr/bin/racer"
let g:rustfmt_autosave = 1

" vim-go settings
au FileType go nmap <leader>r :GoRun<CR>
