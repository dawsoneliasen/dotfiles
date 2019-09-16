" redzhift vim colorscheme

" initialization
set background=dark
hi clear

if exists("syntax_on")
    syntax reset
endif

let g:colors_name = "redzhift"

" color reference:
" https://jonasjacek.github.io/colors/

" general syntax groups
hi NonText ctermfg=gray
hi LineNr ctermfg=gray
hi CursorLineNr ctermfg=blue
hi Comment ctermfg=gray
hi Todo ctermfg=yellow ctermbg=none
hi Statement ctermfg=green
hi String ctermfg=red
hi Constant ctermfg=magenta
hi Function ctermfg=magenta
hi operator ctermfg=magenta
hi MatchParen ctermfg=yellow ctermbg=none
hi Visual ctermfg=white ctermbg=DarkGray
hi Special ctermfg=magenta


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

