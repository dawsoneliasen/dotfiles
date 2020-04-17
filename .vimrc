" -----------------------------------------------------------------------------
" OPTIONS
" -----------------------------------------------------------------------------

syntax on
set number
set relativenumber
set visualbell
set tabstop=4 softtabstop=0 expandtab shiftwidth=4 smarttab
set autoindent
set nowrap
set timeoutlen=1000 ttimeoutlen=0
set ignorecase
set smartcase
set incsearch
" set selection=exclusive

" return to last position when opening file
if has("autocmd")
  au BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$") | exe "normal! g`\"" | endif
endif

" set colorscheme
" set termguicolors
set background=dark
colorscheme redzshift

" -----------------------------------------------------------------------------
" KEYBINDINGS
" -----------------------------------------------------------------------------

" TODO: unused bindings
" map <space><space> <something>
" map $ <something>
" map ^ <something>

" general
let mapleader = " "
nnoremap <CR> :

" navigation
noremap <BS> ^
noremap <tab> $
nnoremap j gj
nnoremap k gk

" create blank lines and stay in normal mode
nnoremap zj o<esc>k
nnoremap zk O<esc>j

" move lines up and down
nnoremap <leader>j ddp
nnoremap <leader>k ddkP

" delete a pair of brackets/parens
nnoremap <leader>% %x``x

" toggle wrapping
nnoremap <leader>w :set wrap<CR>:set linebreak<CR>

" run python files
nnoremap <leader>p <esc>:w<CR>:!clear; python3 %<CR>

" open new comment line
nnoremap <leader>o o#<space>
nnoremap <leader>O O#<space>

" highlight column 80
set colorcolumn=80
" set column 80 color
" highlight ColorColumn ctermbg=lightgrey guibg=lightgrey

" -----------------------------------------------------------------------------
" PLUGINS
" -----------------------------------------------------------------------------

" load plugins with vim-plug
call plug#begin('~/.vim/plugged')
    Plug 'itchyny/lightline.vim'
        let g:lightline = {
            \ 'colorscheme': 'wombat',
            \ }
    Plug 'vim-python/python-syntax'
    Plug 'lervag/vimtex'
        let g:tex_flavor='latex'
        let g:vimtex_view_method='Preview'
        let g:vimtex_quickfix_mode=0
        let g:tex_conceal='abdmg'
    Plug 'tpope/vim-surround'
    Plug 'godlygeek/tabular'
    Plug 'plasticboy/vim-markdown'
    Plug 'jalvesaq/Nvim-R'
    Plug 'SirVer/ultisnips'
        let g:UltiSnipsExpandTrigger='<tab>'
        let g:UltiSnipsJumpForwardTrigger='<tab>'
        let g:UltiSnipsJumpBackwardTrigger='<s-tab>'
    Plug 'KeitaNakamura/tex-conceal.vim'
call plug#end()


" configure lightline
set laststatus=2
set noshowmode

" configure vimtex
set conceallevel=1
hi Conceal ctermbg=none

" configure ultisnips (see ~/.vim/UltiSnips/ for snippet files)

" configure vim-markdown
let g:vim_markdown_math = 1

" configure Nvim-R
let R_assign = 0


