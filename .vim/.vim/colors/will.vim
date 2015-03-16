
set background=dark

highlight clear

if exists("syntax_on")
	syntax reset
endif

let g:colors_name="will"
"white          231
"black          232
"light black    234
"red            196
"green          46
"blue           27
"purple         93
"yellow         226
"pink           200
"orange         202
"aqua           51
highlight Normal        ctermfg=231 ctermbg=234

highlight Comment       ctermfg=46

highlight Constant      ctermfg=51      cterm=bold
highlight String        ctermfg=196
highlight Character     ctermfg=196
highlight Number        ctermfg=51      cterm=bold
highlight Boolean       ctermfg=129     cterm=bold
highlight Float         ctermfg=51      cterm=bold

highlight Identifier    ctermfg=202
highlight Function      ctermfg=27      cterm=bold

highlight Statement     ctermfg=226     cterm=bold
highlight Conditional   ctermfg=226     cterm=bold
highlight Repeat        ctermfg=226     cterm=bold
highlight Label         ctermfg=226     cterm=bold
highlight Operator      ctermfg=226     cterm=bold
highlight Keyword       ctermfg=226     cterm=bold
highlight Exception     ctermfg=226     cterm=bold

highlight PreProc       ctermfg=202     cterm=bold
highlight Include       ctermfg=202     cterm=bold
highlight Define        ctermfg=202     cterm=bold
highlight Macro         ctermfg=202     cterm=bold
highlight PreCondit     ctermfg=202     cterm=bold

highlight Type          ctermfg=200     cterm=bold
highlight StorageClass  ctermfg=200     cterm=bold
highlight Structure     ctermfg=200     cterm=bold
highlight Typedef       ctermfg=200     cterm=bold

highlight Special       ctermfg=226     cterm=bold
highlight SpecialChar   ctermfg=22      cterm=bold
highlight Tag           ctermfg=22      cterm=bold
highlight Delimiter     ctermfg=22      cterm=bold

highlight Underlined    ctermfg=14

highlight Ignore        ctermfg=0
highlight Access        ctermfg=13
highlight Selection     ctermfg=226     
highlight Todo          ctermfg=231     ctermbg=46      cterm=bold


