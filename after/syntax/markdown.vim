syn region mkdMarker matchgroup=mkdMarkerMatch start=/==/ end=/==/ keepend contains=@Spell concealends


syn match mkdQuote /^> .*/ contains=@Spell,mkdMarker,markdownBoldInquote,markdownItalicInquote,markdownStrikeInquote
syn region markdownStrikeInquote matchgroup=markdownStrikeDelimiterInquote start="\~\~\S\@=" end="\S\@<=\~\~\|^$" contained containedin=mkdQuote concealends

syn region markdownItalicInquote matchgroup=markdownItalicDelimiterInquote start="\w\@<!_\S\@=" end="\S\@<=_\w\@!\|^$" skip="\\_" contained containedin=mkdQuote concealends
syn region markdownItalicInquote matchgroup=markdownItalicDelimiterInquote start="\*\S\@=" end="\S\@<=\*\|^$" skip="\\\*" contained containedin=mkdQuote concealends

syn region markdownBoldInquote matchgroup=markdownBoldDelimiterInquote start="\w\@<!__\S\@=" end="\S\@<=__\w\@!\|^$" skip="\\_" contained containedin=mkdQuote concealends
syn region markdownBoldInquote matchgroup=markdownBoldDelimiterInquote start="\*\*\S\@=" end="\S\@<=\*\*\|^$" skip="\\\*" contained containedin=mkdQuote concealends

syn region markdownBoldItalicInquote matchgroup=markdownBoldItalicDelimiterInquote start="\*\*\*\S\@=" end="\S\@<=\*\*\*\|^$" skip="\\\*" contained containedin=mkdQuote concealends
syn region markdownBoldItalicInquote matchgroup=markdownBoldItalicDelimiterInquote start="\w\@<!___\S\@=" end="\S\@<=___\w\@!\|^$" skip="\\_" contained containedin=mkdQuote concealends


highlight markdownStrikeInquote cterm=strikethrough gui=strikethrough guifg=#cba6f7
highlight markdownStrikeDelimiterInquote cterm=strikethrough gui=strikethrough guifg=#cba6f7

highlight markdownItalicInquote gui=underline,italic guifg=#dfc7f8
highlight markdownItalicDelimiterInquote gui=underline,italic guifg=#dfc7f8

highlight markdownBoldDelimiterInquote cterm=bold ctermfg=Red gui=bold guifg=#eba0ac
highlight markdownBoldInquote cterm=bold ctermfg=Red gui=bold guifg=#eba0ac

highlight markdownBoldItalicInquote cterm=bold,italic ctermfg=DarkRed gui=bold,italic guifg=#eba0ac
highlight markdownBoldItalicDelimiterInquote cterm=bold,italic ctermfg=DarkRed gui=bold,italic guifg=#eba0ac

highlight mkdMarker ctermbg=Yellow ctermfg=Black guibg=#f9e2af guifg=#45475h
highlight htmlBold ctermfg=Red gui=bold guifg=#89b4fa
highlight htmlItalic ctermfg=LightRed gui=underline,italic
highlight mkdQuote ctermfg=DarkBlue guifg=#cba6f7
