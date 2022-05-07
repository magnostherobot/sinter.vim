" Vim syntax file
" Language: Sinter
" Maintainer: Tom Harley
" Latest Revision: 7 May 2022
"
" vim: ts=2 sw=2 et

if exists("b:current_syntax")
  finish
endif

syn keyword sinTopLevel def dec type
syn keyword sinBuiltins case if let

syn match sinID '[-A-Za-z_+*^!:/%.=<>][-A-Za-z0-9_+*^!:/%.=<>]*'

syn match sinNumber '[-+]\d\+'
syn match sinNumber '\d\+'

syn match sinString '["][^"]*["]'

syn match sinSeparator ';'

let b:current_syntax = "sin"

hi def link sinTopLevel Type
hi def link sinBuiltins Conditional
hi def link sinSeparator Delimiter
" hi def link sinID ???
hi def link sinNumber Number
hi def link sinString String
