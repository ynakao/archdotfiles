inoremap jj <Esc>

set number
set tabstop=4
set smartindent
set shiftwidth=4
set expandtab

let mapleader="\<Space>"

" deoplete tab completion
inoremap <silent><expr> <Tab>
    \ pumvisible() ? "\<C-n>" :
    \ deoplete#mappings#manual_complete()

call plug#begin('~/.config/nvim/plugged')

Plug 'Shougo/deoplete.nvim'
Plug 'phildawes/racer', { 'do': 'cargo build --release' }
Plug 'rust-lang/rust.vim'
Plug 'fatih/vim-go'

call plug#end()

" Use deoplete.
let g:deoplete#enable_at_startup = 1

"set hidden
let g:racer_cmd = "~/.nvim/plugged/racer/target/release/racer"
let $RUST_SRC_PATH="/home/ugarch/src/rust/src"

" let g:deoplete#omni_patterns.go = '\h\w\.\w*'

" vim-go settings
au FileType go nmap <leader>r :GoRun<CR>
