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

Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'Shougo/neosnippet.vim'
Plug 'honza/vim-snippets'
Plug 'rust-lang/rust.vim'
Plug 'fatih/vim-go'
Plug 'racer-rust/vim-racer'

call plug#end()

" Use deoplete.
let g:deoplete#enable_at_startup = 1

" rust settings
set hidden
let g:racer_cmd = "/usr/bin/racer"
let g:rustfmt_autosave = 1

" let g:deoplete#omni_patterns.go = '\h\w\.\w*'

" vim-go settings
au FileType go nmap <leader>r :GoRun<CR>

" neosnippet settings
" disable default snippets
let g:neosnippet#disable_runtime_snippets = {
\   '_' : 1,
\ }
" instead load honza/vim-snippets
let g:neosnippet#snippets_directory='~/.config/nvim/plugged/vim-snippets/snippets'
" Plugin key-mappings.
" Note: It must be "imap" and "smap".  It uses <Plug> mappings.
imap <C-k>     <Plug>(neosnippet_expand_or_jump)
smap <C-k>     <Plug>(neosnippet_expand_or_jump)
xmap <C-k>     <Plug>(neosnippet_expand_target)
