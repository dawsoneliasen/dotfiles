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

" special
hi ColorColumn ctermbg=blue

" general syntax groups
hi NonText ctermfg=gray guifg=gray
hi LineNr  ctermfg=gray guifg=gray
hi CursorLineNr ctermfg=blue guifg=blue
hi Comment ctermfg=DarkGray guifg=gray
hi Todo ctermfg=yellow guifg=yellow ctermbg=none
hi Statement ctermfg=green guifg=green
hi String ctermfg=blue guifg=blue
hi Constant ctermfg=red guifg=red
hi Function ctermfg=magenta guifg=magenta
hi Operator ctermfg=magenta guifg=magenta
hi MatchParen ctermfg=yellow  guifg=yellow ctermbg=none
hi Visual ctermfg=white guifg=white ctermbg=DarkGray 
hi Special ctermfg=red guifg=red

hi Pmenu ctermfg=242 ctermbg=0 guibg=DarkGrey
hi PmenuSel ctermfg=0 ctermbg=13 guibg=Magenta


" python
hi pythonTripleQuotes ctermfg=gray
hi pythonOperator ctermfg=cyan
hi pythonImport ctermfg=green
hi pythonNone ctermfg=211
hi pythonBoolean ctermfg=211
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

" yaml
hi yamlBlockMappingKey ctermfg=white
hi yamlKeyValueDelimiter ctermfg=white
hi yamlPlainScalar ctermfg=red
hi yamlFlowCollection ctermfg=magenta
hi yamlFlowIndicator ctermfg=magenta
hi yamlBlockCollectionItemStart ctermfg=blue
hi yamlFlowMappingKey ctermfg=blue
