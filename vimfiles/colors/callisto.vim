" local syntax file - set colors on a per-machine basis:
" vim: tw=0 ts=4 sw=4
" Vim color file
" Maintainer:   Ron Aaron <ron@ronware.org>
" Last Change:  2003 May 02

set background=dark
hi clear
if exists("syntax_on")
  syntax reset
endif
let g:colors_name = "callisto"
hi Normal               guifg=#ffffff gui=NONE  guibg=black
hi Comment        term=bold  ctermbg=DarkGray ctermfg=Cyan  guibg=#394747  guifg=#6dffff
hi Constant       term=underline  ctermfg=Magenta  guifg=#ff7dff
hi Special        term=bold           ctermfg=Red guifg=#ff4c4c
hi Identifier  term=underline  cterm=bold   ctermfg=Yellow guifg=#eedd82
hi Statement  term=bold       ctermfg=LightBlue gui=bold    guifg=#6495ed
hi Conditional term=bold       ctermfg=LightBlue gui=bold    guifg=#6495ed
hi PreProc    term=underline  ctermfg=LightBlue  guifg=#6495ed
hi Type       term=underline  ctermfg=LightGreen guifg=#a1db7a gui=bold
hi Function   term=bold       ctermfg=White      guifg=#ffffff
hi Repeat     term=underline  ctermfg=White          guifg=#ffffff
hi Operator   ctermfg=Red                     guifg=#ff4c4c
hi Ignore     ctermfg=Red             guifg=#ff4c4c          ctermfg=black           guifg=bg
hi Error        term=reverse ctermbg=Red ctermfg=White guibg=Red guifg=White
hi Todo term=standout ctermbg=Yellow ctermfg=Black guifg=Blue guibg=Yellow
hi LineNr ctermfg=Yellow guifg=#eedd82
hi Pmenu ctermbg=DarkGray ctermfg=White guibg=#666666 guifg=#eeeeee
hi PmenuSel ctermbg=LightBlue ctermfg=Black guibg=#6dffff guifg=#666666
hi Visual guifg=#666666 guibg=#cecece ctermfg=Gray ctermbg=Black term=underline
hi Title ctermfg=White guifg=#ffffff
hi Search guibg=#6495ed guifg=#ffffff ctermbg=LightBlue ctermfg=White
hi Function guifg=#74a7ce ctermfg=LightBlue

" Common groups that link to default highlighting.
" You can specify other highlighting easily.
hi link String  Constant
hi link Character       Constant
hi link Number  Constant
hi link Boolean Constant
hi link Float           Number
hi link Conditional     Rep
hi link Label           Statement
hi link Keyword Statement
hi link Exception       Statement
hi link Include PreProc
hi link Define  PreProc
hi link Macro           PreProc
hi link PreCondit       PreProc
hi link StorageClass    Type
hi link Structure       Type
hi link Typedef Type
hi link Tag             Special
hi link SpecialChar     Special
hi link Delimiter       Special
hi link SpecialComment Special
hi link Debug           Special
hi link htmlTag Title
hi link cssClassName Title
hi link cssIdentifier Title
hi link cssBraces Title
hi link JavaScriptValue Statement
hi link JavaScriptParens Statement
