set background=light

hi clear

highlight Normal       guibg=#ffffff guifg=#000000
highlight NormalFloat guibg=#dddddd

highlight Visual       guibg=#cccccc guifg=#333333

highlight NonText      guibg=None    guifg=#cccccc
highlight EndOfBuffer  guibg=#eeeeee guifg=#c80000
highlight VertSplit    guibg=#ffffff guifg=#eeeeee

highlight LineNr       guibg=#ffffff guifg=#888888
highlight SignColumn   guibg=None

highlight CursorLine   guibg=None
highlight CursorLineNr guibg=#ffcc00 guifg=#c80000

highlight MatchParen   guibg=#c80000 guifg=#ffffff

highlight SpellBad     guibg=None    guifg=#c80000

highlight Todo         guibg=Yellow  guifg=#000000
highlight Title        guibg=None    guifg=#000000 gui=bold

highlight Identifier   guibg=None    guifg=#000000 gui=bold
highlight Keyword      guibg=None    guifg=#000000 gui=bold
highlight Type         guibg=None    guifg=#000000 gui=bold
highlight Function     guibg=None    guifg=#000000 gui=None
highlight Delimiter    guibg=None    guifg=#000000
highlight Tag          guibg=None    guifg=#000000
highlight Constant     guibg=None    guifg=#000000
highlight Statement    guibg=None    guifg=#000000 gui=bold
highlight Special      guibg=None    guifg=#000000 gui=bold
highlight String       guibg=None    guifg=#000000
highlight Comment      guibg=#f0f0f0 guifg=#333333
highlight PreProc      guibg=None    guifg=#000000

" highlight TSAnnotation BlueItalic
" highlight TSAttribute BlueItalic
" highlight TSBoolean Purple
" highlight TSCharacter Yellow

highlight! link javascriptTSTag         NONE
highlight! link javascriptTSVariale     NONE
highlight! link javascriptTSConstructor NONE

highlight TSProperty     guifg=#000000 gui=None
highlight TSVariable     guifg=#000000 gui=None
highlight TSInclude      guifg=#000000 gui=bold
highlight TSError        guifg=#c80000
highlight TSConditional  guifg=#000000 gui=bold
highlight TSPunctBracket guifg=#000000 gui=None
highlight TSProperty     guifg=#000000
highlight TSParameter    gui=None
highlight TSOperator     gui=None

highlight LspDiagnosticsDefaultError       guifg=#c80000 guibg=#f0f0f0
highlight LspDiagnosticsDefaultHint        guifg=#4b6c8b guibg=#f0f0f0
highlight LspDiagnosticsDefaultWarning     guifg=#000000 guibg=#f0f0f0
highlight LspDiagnosticsDefaultInformation guifg=#000000 guibg=#f0f0f0

highlight LspDiagnosticsSignError       guibg=#c80000 guifg=#f0f0f0
highlight LspDiagnosticsSignHint        guibg=#4b6c8b guifg=#f0f0f0
highlight LspDiagnosticsSignWarning     guibg=#000000 guifg=#f0f0f0
highlight LspDiagnosticsSignInformation guibg=#000000 guifg=#f0f0f0

highlight LspDiagnosticsUnderlineError       guibg=#f0f0f0
highlight LspDiagnosticsUnderlineHint        guibg=#f0f0f0
highlight LspDiagnosticsUnderlineWarning     guibg=#f0f0f0
highlight LspDiagnosticsUnderlineInformation guibg=#f0f0f0

highlight DiffAdd    guifg=#00b400 guibg=#ccf0cc
highlight DiffDelete guifg=#c80000 guibg=#f4cccc
highlight DiffChange guifg=#c3c67d guibg=#f0f0f0

highlight VimwikiHeaderChar gui=None           guifg=#888888
highlight VimwikiListTodo   gui=None           guifg=#000000
highlight VimwikiBold       gui=bold
"highlight VimwikiItalic     gui=italic
"highlight VimwikiDelText    gui=strikethrough  guifg=#777777

highlight bibType gui=None guifg=#000000
highlight bibKey  gui=bold

highlight gfStructural guifg=#000000 gui=underline

highlight NeogitBranch               guibg=#f0f0f0 guifg=#000000 gui=bold
highlight NeogitHunkHeader           guibg=#ffffff
highlight NeogitHunkHeaderHighlight  guibg=#dddddd
highlight NeogitDiffContextHighlight guibg=#f0f0f0
highlight NeogitDiffAddHighlight     guibg=#ccf0cc
highlight NeogitDiffDeleteHighlight  guibg=#f4cccc
highlight NeogitLogViewCursorLine    guibg=#f0f0f0

highlight! link TSFunction        Function
highlight! link TSMethod          Function
highlight! link TSKeyword         Keyword
highlight! link TSKeywordOperator Keyword
highlight! link TSKeywordFunction Keyword
highlight! link TSVariableBuiltin TSVariable
highlight! link TSConstant        Constant
highlight! link TSString          String
highlight! link TSStringEscape    String
highlight! link TSStringRegex     String
highlight! link TSTagDelimiter    Tag
highlight! link TSPunctDelimiter  TSPunctBracket
highlight! link TSPunctSpecial    TSPunctBracket
highlight! link TSTitle           Title

highlight! link TSComment         Comment

highlight! link javascriptTSTag   TSTag

highlight! link DiffText          Normal

highlight! link VimwikiHeader1    Title
highlight! link VimwikiHeader2    Title
highlight! link VimwikiHeader3    Title
highlight! link VimwikiHeader4    Title
highlight! link VimwikiHeader5    Title
highlight! link VimwikiHeader6    Title

" highlight TSConstBuiltin OrangeItalic
" highlight TSConstMacro OrangeItalic
" highlight TSConstructor Fg
" highlight TSField Green
" highlight TSFloat Purple
" highlight TSFuncBuiltin Green
" highlight TSFuncMacro Green
" highlight TSLabel Red
" highlight TSNamespace BlueItalic
" highlight TSNone Fg
" highlight TSNumber Purple
" highlight TSParameterReference Fg
" highlight TSRepeat Red
" highlight TSStructure OrangeItalic
" highlight TSText Green
" highlight TSStrike Grey
" highlight TSMath Yellow
" highlight TSType BlueItalic
" highlight TSTypeBuiltin BlueItalic
" highlight TSURI markdownUrl


highlight Pmenu       guibg=#333333 guifg=#ffffff
highlight PmenuSel    guibg=#cccccc guifg=#000000
highlight PmenuSbar   guibg=#333333
highlight PmenuThumb  guibg=#c80000

set winhighlight=Normal:Normal
