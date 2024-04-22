syn region mkdMarker matchgroup=mkdMarkerMatch start=/==/ end=/==/ keepend contains=@Spell concealends


syn match mkdQuote /^> .*/ contains=@Spell,mkdMarker,markdownBoldInquote,markdownItalicInquote,markdownStrikeInquote
syn region markdownStrikeInquote matchgroup=markdownStrikeDelimiterInquote start="\~\~\S\@=" end="\S\@<=\~\~\|^$" contained containedin=mkdQuote concealends

syn region markdownItalicInquote matchgroup=markdownItalicDelimiterInquote start="\w\@<!_\S\@=" end="\S\@<=_\w\@!\|^$" skip="\\_" contained containedin=mkdQuote concealends
syn region markdownItalicInquote matchgroup=markdownItalicDelimiterInquote start="\*\S\@=" end="\S\@<=\*\|^$" skip="\\\*" contained containedin=mkdQuote concealends

syn region markdownBoldInquote matchgroup=markdownBoldDelimiterInquote start="\w\@<!__\S\@=" end="\S\@<=__\w\@!\|^$" skip="\\_" contained containedin=mkdQuote concealends
syn region markdownBoldInquote matchgroup=markdownBoldDelimiterInquote start="\*\*\S\@=" end="\S\@<=\*\*\|^$" skip="\\\*" contained containedin=mkdQuote concealends

syn region markdownBoldItalicInquote matchgroup=markdownBoldItalicDelimiterInquote start="\*\*\*\S\@=" end="\S\@<=\*\*\*\|^$" skip="\\\*" contained containedin=mkdQuote concealends
syn region markdownBoldItalicInquote matchgroup=markdownBoldItalicDelimiterInquote start="\w\@<!___\S\@=" end="\S\@<=___\w\@!\|^$" skip="\\_" contained containedin=mkdQuote concealends


highlight markdownStrikeInquote gui=strikethrough guifg=#cba6f7
highlight markdownStrikeDelimiterInquote gui=strikethrough guifg=#cba6f7

highlight markdownItalicInquote gui=underline,italic guifg=#dfc7f8
highlight markdownItalicDelimiterInquote gui=underline,italic guifg=#dfc7f8

highlight markdownBoldDelimiterInquote gui=bold guifg=#eba0ac
highlight markdownBoldInquote gui=bold guifg=#eba0ac

highlight markdownBoldItalicInquote gui=bold,italic guifg=#eba0ac
highlight markdownBoldItalicDelimiterInquote gui=bold,italic guifg=#eba0ac

highlight mkdMarker guibg=#f9e2af guifg=#45475a
highlight htmlBold gui=bold guifg=#89b4fa
highlight htmlItalic gui=underline,italic
highlight mkdQuote guifg=#cba6f7
