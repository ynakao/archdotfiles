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
Plug 'racer-rust/vim-racer'

call plug#end()

" Use deoplete.
let g:deoplete#enable_at_startup = 1

set hidden
let g:racer_cmd = "/usr/bin/racer"
let $RUST_SRC_PATH="/home/archmba/.multirust/toolchains/stable-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/src"

" let g:deoplete#omni_patterns.go = '\h\w\.\w*'

" vim-go settings
au FileType go nmap <leader>r :GoRun<CR>
