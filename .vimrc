" options
    syntax on
    set number
    set relativenumber
    set visualbell
    set tabstop=8 softtabstop=0 expandtab shiftwidth=4 smarttab
    set autoindent
    set selection=exclusive
    set nowrap
    set timeoutlen=1000 ttimeoutlen=0
    set ignorecase
    set smartcase
    set incsearch

" TODO: figure about a better folding scheme
" set nofoldenable
" set foldmethod=indent

" set colorscheme
    set termguicolors
    set background=dark
    colorscheme redzshift

" custom key bindings

    " TODO: unused bindings
    " map <space> <something>
    " map <space><space> <something>
    " map <enter> <something>
    " map $ <something>
    " map ^ <something>

    " TODO: actions that need better bindings
    " map <something> <C-w>
    " imap <something> <esc>
    " map <something> <add spaces until aligned with char on above line>

    " general
    let mapleader = " "
    nnoremap <CR> :
    nnoremap <space><space> i

    " dvorak compensation
    "nnoremap t j
    "nnoremap j t

    "nnoremap n k
    "nnoremap k n

    "nnoremap s l
    "nnoremap l s

    "" navigation
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

    " surround selected text with brackets/quotes
    vnoremap <leader>( c()<esc>P 
    vnoremap <leader>[ c[]<esc>P
    vnoremap <leader>{ c{}<esc>P
    vnoremap <leader>' c''<esc>P
    vnoremap <leader>" c""<esc>P

    " delete a pair of brackets/quotes
    nnoremap <leader>% %x``x

    " run python files
    nnoremap <leader>p <esc>:w<CR>:!clear; python3 %<CR>

" configure lightline
    set laststatus=2
    set noshowmode
    let g:lightline = {
        \ 'colorscheme': 'wombat',
        \ }

execute pathogen#infect()

" launch nerdtree on start
    " autocmd vimenter * NERDTree

