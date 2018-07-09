inoremap jj <Esc>
nnoremap <Space> <Nop>
let mapleader="\<Space>"

set number
set title
set showmatch
set tabstop=4
set smartindent
set shiftwidth=4
set expandtab
set ignorecase
set smartcase
set wrapscan
set wrap
set encoding=utf-8
set clipboard+=unnamedplus
set noeb vb t_vb=
set backspace=2
set whichwrap=b,s,h,l,<,>,[,],~
set cursorline
syntax enable

call plug#begin('~/.config/nvim/plugged')
Plug 'Valloric/YouCompleteMe'
Plug 'rdnetto/YCM-Generator', { 'branch': 'stable'}
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
Plug 'altercation/vim-colors-solarized'
Plug 'rust-lang/rust.vim'
Plug 'racer-rust/vim-racer'
Plug 'fatih/vim-go'
Plug 'vim-airline/vim-airline'
Plug 'Yggdroot/indentLine'
Plug 'neomake/neomake'
Plug 'mbbill/undotree'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
call plug#end()

" Load plugins manually when entering insert mode
" https://github.com/junegunn/vim-plug/wiki/faq#loading-plugins-manually
" augroup load_ycm
"   autocmd!
"   autocmd InsertEnter * call plug#load('YouCompleteMe')
"                      \| autocmd! load_ycm
" augroup END

" vim-color-solarized settings
set background=dark
colorscheme solarized

" YouCompleteMe settings
let g:ycm_collect_identifiers_from_tags_files = 1 " Let YCM read tags from Ctags file
let g:ycm_complete_in_comments = 1 " Completion in comments
let g:ycm_complete_in_strings = 1 " Completion in string
let g:ycm_global_ycm_extra_conf = '~/.ycm_extra_conf.py'
let g:ycm_confirm_extra_conf = 0 " ignore the confirmation of loading file
let g:ycm_python_binary_path = '/usr/bin/python' " Enable python3 completetion
set completeopt-=preview " disable preview window
nnoremap <leader>jd :YcmCompleter GoTo<CR> " jump to defenition
nnoremap <leader>gd :YcmCompleter GetDoc<CR> " open documentation
nnoremap <leader>c <C-w>k<C-w>q " close documentation

" make YCM compatible with UltiSnips
" http://stackoverflow.com/a/22253548
let g:ycm_key_list_select_completion = ['<tab>', '<Down>']
let g:ycm_key_list_previous_completion = ['<s-tab>', '<Up>']

" key bindings for UltiSnipsExpandTrigger
let g:UltiSnipsExpandTrigger = "<C-j>"
let g:UltiSnipsJumpForwardTrigger = "<C-j>"
let g:UltiSnipsJumpBackwardTrigger = "<C-k>"

" vim-airline settings
set laststatus=2

" rust settings
set hidden
let g:racer_cmd = "/usr/bin/racer"
let g:rustfmt_autosave = 1
au FileType rust nmap <leader>r :RustRun<CR>

" vim-go settings
au FileType go nmap <leader>r :GoRun<CR>
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_structs = 1
let g:go_highlight_operators = 1
let g:go_highlight_build_constraints = 1
let g:go_term_mode = "split" " split terminal horizontally

" neomake settings
let g:neomake_python_enabled_makers = ['flake8']
let g:neomake_javascript_enabled_makers = ['jshint']
" run neomake on the current file on every write
autocmd! BufWritePost * Neomake

" undotree settings
" enable persistent undo
if has("persistent_undo")
    set undodir=~/.config/nvim/undodir
    set undofile
endif

"" compile cpp file shortcut settings
au FileType c nmap <leader>c :!gcc -o %< %<CR>
au FileType cpp nmap <leader>c :!g++ -std=c++0x -o %< %<CR>
au FileType c,cpp nmap <leader>e :te ./%<<CR>

" fzf settings
nnoremap <silent> <Leader>f :Files<CR>
nnoremap <silent> <Leader>b :Buffers<CR>
