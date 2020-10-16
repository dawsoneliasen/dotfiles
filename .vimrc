" -----------------------------------------------------------------------------
" OPTIONS
" -----------------------------------------------------------------------------
"
set number  " add line numbers
set relativenumber  " show line numbers relative to current line
set visualbell  " don't make noise
set tabstop=4 softtabstop=0 expandtab shiftwidth=4 smarttab
set autoindent
set nowrap  " don't wrap lines
" set timeoutlen=1000 ttimeoutlen=0
set noesckeys  " disable escape keys; prevents delay when pressing esc
set ignorecase  " ignore case when searching with / or ?
set smartcase  " don't ignore case if a capital letter is present in the query
set incsearch  " show search results as the query is typed
set backspace=indent,eol,start  " allow backspacing lines
" set selection=exclusive
set indentkeys-=:  " remove colon from indent keys

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
filetype off
call plug#begin('~/.vim/plugged')
    Plug 'itchyny/lightline.vim'
        let g:lightline = {
            \ 'colorscheme': 'wombat',
            \ }
    Plug 'vim-python/python-syntax'
    Plug 'lervag/vimtex'
        let g:tex_flavor='latex'
        let g:vimtex_view_method='zathura'
        let g:vimtex_quickfix_mode=0
        let g:tex_conceal='abdmg'
    Plug 'KeitaNakamura/tex-conceal.vim'
    Plug 'tpope/vim-surround'
    Plug 'godlygeek/tabular'
    Plug 'tpope/vim-markdown'
        let g:vim_markdown_math = 1
        let g:markdown_fenced_languages = ['python', 'R']
    Plug 'kana/vim-textobj-user'
    Plug 'coachshea/vim-textobj-markdown'
    Plug 'vim-pandoc/vim-pandoc'
    Plug 'vim-pandoc/vim-pandoc-syntax'
    " Plug 'vim-pandoc/vim-rmarkdown'
    " Plug 'jalvesaq/Nvim-R'
    let R_assign = 0
    Plug 'SirVer/ultisnips'
        let g:UltiSnipsExpandTrigger='<tab>'
        let g:UltiSnipsJumpForwardTrigger='<tab>'
        let g:UltiSnipsJumpBackwardTrigger='<c-tab>'
        let g:UltiSnipsSnippetsDir='~/.vim/UltiSnips'
        let g:UltiSnipsSnippetDirectories=['.vim/UltiSnips', 'UltiSnips']
    Plug 'dense-analysis/ale'
        let g:ale_linters={'*': ['autopep8', 'pycodestyle']}
        highlight clear SignColumn
    Plug 'jpalardy/vim-slime'
        let g:slime_target='tmux'
        let g:slime_default_config={'socket_name': 'default', 'target_pane': '{last}'}
        xmap <leader><enter> <Plug>SlimeRegionSend
        nmap <leader><enter> <Plug>SlimeParagraphSend
        " execute an Rmarkdown code chunk using slime
        " (depends on markdown text objects)
        " nmap <leader>g V <Plug>(textobj-markdown-Bchunk-i) <Plug>SlimeRegionSend
        nmap <leader>g ViF<leader><enter>
call plug#end()

" add filetype detection, syntax highlighting
" (must come after enabling UltiSnips and other packages)
filetype plugin indent on
syntax on
set runtimepath+=~/.vim/UltiSnips

" configure lightline
set laststatus=2
set noshowmode

" configure vimtex
set conceallevel=1
hi Conceal ctermbg=none
