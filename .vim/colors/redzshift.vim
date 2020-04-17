" redzshift vim colorscheme

" initialization
set background=dark
hi clear
if exists("syntax_on")
    syntax reset
endif

let g:colors_name = "redzshift"
" let s:t_Co = exists('&t_Co') && !empty(&t_Co) && &t_Co > 1 ? &t_Co : 2

" color reference:
" https://jonasjacek.github.io/colors/

" general syntax groups
hi NonText      ctermfg=gray    guifg=gray
hi LineNr       ctermfg=gray    guifg=gray
hi CursorLineNr ctermfg=blue    guifg=blue
hi Comment      ctermfg=gray    guifg=gray
hi Todo         ctermfg=yellow  guifg=yellow  ctermbg=none
hi Statement    ctermfg=green   guifg=green
hi String       ctermfg=red     guifg=red
hi Constant     ctermfg=magenta guifg=magenta
hi Function     ctermfg=magenta guifg=magenta
hi Operator     ctermfg=magenta guifg=magenta
hi MatchParen   ctermfg=yellow  guifg=yellow  ctermbg=none
hi Visual       ctermfg=white   guifg=white   ctermbg=DarkGray 
hi Special      ctermfg=magenta guifg=magenta


" python
" hi pythonImport ctermfg=blue
" hi pythonInclude ctermfg=blue
" hi pythonStatement ctermfg=cyan
" hi pythonConditional ctermfg=cyan
" hi pythonRepeat ctermfg=cyan
" hi pythonException ctermfg=cyan
" hi pythonNumber ctermfg=red
" hi pythonHexNumber ctermfg=red
" hi pythonOctNumber ctermfg=red
" hi pythonBinNumber ctermfg=red
" hi pythonFloat ctermfg=red
" hi pythonDottedName ctermfg=white
" hi pythonDecorator ctermfg=blue
" hi pythonOperator ctermfg=magenta

