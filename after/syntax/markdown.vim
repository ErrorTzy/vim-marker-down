syn region mkdMarker matchgroup=mkdMarkerMatch start=/==/ end=/==/ keepend contains=@Spell concealends
syn match mkdQuote /^> .*/ contains=@Spell,mkdMarker,htmlBold,htmlItalic,markdownBold,markdownItalic
highlight mkdMarker guibg=#f9e2af guifg=#45475a
highlight htmlBold gui=bold guifg=#89b4fa
highlight htmlItalic gui=underline,italic
highlight mkdQuote guifg=#cba6f7
