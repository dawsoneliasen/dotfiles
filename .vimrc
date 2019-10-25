" options
    syntax on
    set number
    set relativenumber
    set visualbell
    set tabstop=8 softtabstop=0 expandtab shiftwidth=4 smarttab
    set autoindent
    " set selection=exclusive
    set nowrap
    set timeoutlen=1000 ttimeoutlen=0
    set ignorecase
    set smartcase
    set incsearch
    set conceallevel=2

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

    " dvorak compensation
    "nnoremap t j
    "nnoremap j t

    "nnoremap n k
    "nnoremap k n

    "nnoremap s l
    "nnoremap l s

    " navigation
    noremap <BS> ^
    noremap <tab> $
    nnoremap j gj
    nnoremap k gk
    
    " automatically close parens, brackets, quotes
    " inoremap ' ''<esc>i
    " inoremap " ""<esc>i
    " inoremap ( ()<esc>i
    " inoremap [ []<esc>i
    " inoremap { {}<esc>i
    inoremap () ()<left>
    inoremap [] []<left>
    inoremap {} {}<left>
    inoremap '' ''<left>
    inoremap "" ""<left>

    " latex
    nnoremap <leader>$ i<right>$$<left>
    inoremap $$ $$<left>
    inoremap \a \alpha
    inoremap \b \beta
    inoremap \e \epsilon
    inoremap \s \sigma

    inoremap \f \frac{}{}<esc>2<left>i
    inoremap \h \hat
    inoremap \m \begin{bmatrix}<space>\end{bmatrix}<esc>Bi
    
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

    " toggle wrapping
    nnoremap <leader>w :set wrap<CR>:set linebreak<CR>

    " run python files
    nnoremap <leader>p <esc>:w<CR>:!clear; python3 %<CR>

    " move between python function definitions
    noremap <leader>/ /def<CR>zt^
    noremap <leader>? ?def<CR>zt^

" configure lightline
    set laststatus=2
    set noshowmode
    let g:lightline = {
        \ 'colorscheme': 'wombat',
        \ }

" configure vim-markdown
    let g:vim_markdown_math = 1

execute pathogen#infect()

" launch nerdtree on start
    " autocmd vimenter * NERDTree

