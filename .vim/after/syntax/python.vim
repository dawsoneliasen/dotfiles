" treat docstrings as comments
syn region Comment start=/"""/ end=/"""/

" missing keywords
syn keyword pythonNone None
syn keyword pythonBoolean True False
syn keyword pythonBuiltinFunc print type len min max range super zip abs
syn keyword pythonBuiltinType int float bool str list dict tuple

" highlight `self`
hi pythonSelf ctermfg=yellow ctermbg=none
syn keyword pythonSelf self cls
