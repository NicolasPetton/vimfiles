" This scheme was created by CSApproxSnapshot
" on Thu, 20 Oct 2011

hi clear
if exists("syntax_on")
    syntax reset
endif

if v:version < 700
    let g:colors_name = expand("<sfile>:t:r")
    command! -nargs=+ CSAHi exe "hi" substitute(substitute(<q-args>, "undercurl", "underline", "g"), "guisp\\S\\+", "", "g")
else
    let g:colors_name = expand("<sfile>:t:r")
    command! -nargs=+ CSAHi exe "hi" <q-args>
endif

if 0
elseif has("gui_running") || (&t_Co == 256 && (&term ==# "xterm" || &term =~# "^screen") && exists("g:CSApprox_konsole") && g:CSApprox_konsole) || &term =~? "^konsole"
    CSAHi Normal term=NONE cterm=NONE ctermbg=16 ctermfg=231 gui=NONE guibg=#030303 guifg=#ffffff
    CSAHi cssPseudoClassId term=NONE cterm=NONE ctermbg=bg ctermfg=109 gui=NONE guibg=bg guifg=#7587a6
    CSAHi htmlSpecialChar term=NONE cterm=NONE ctermbg=bg ctermfg=173 gui=NONE guibg=bg guifg=#cf6a4c
    CSAHi cssValueLength term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
    CSAHi cssCommonAttr term=NONE cterm=NONE ctermbg=bg ctermfg=173 gui=NONE guibg=bg guifg=#cf6a4c
    CSAHi cssBraces term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
    CSAHi pythonGlobalVariable term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
    CSAHi javaScriptFunction term=NONE cterm=NONE ctermbg=bg ctermfg=173 gui=NONE guibg=bg guifg=#cf6a4c
    CSAHi PreProc term=underline cterm=NONE ctermbg=bg ctermfg=109 gui=NONE guibg=bg guifg=#7587a6
    CSAHi Type term=underline cterm=NONE ctermbg=bg ctermfg=145 gui=NONE guibg=bg guifg=#9b859d
    CSAHi Underlined term=underline cterm=underline ctermbg=bg ctermfg=147 gui=underline guibg=bg guifg=#80a0ff
    CSAHi Ignore term=NONE cterm=NONE ctermbg=bg ctermfg=244 gui=NONE guibg=bg guifg=#848484
    CSAHi Error term=reverse cterm=underline ctermbg=bg ctermfg=173 gui=underline guibg=bg guifg=#cf6a4c
    CSAHi Todo term=NONE cterm=bold ctermbg=bg ctermfg=229 gui=bold guibg=bg guifg=#f9ee98
    CSAHi String term=NONE cterm=NONE ctermbg=bg ctermfg=144 gui=NONE guibg=bg guifg=#8f9d6a
    CSAHi Number term=NONE cterm=NONE ctermbg=bg ctermfg=173 gui=NONE guibg=bg guifg=#cf6a4c
    CSAHi Boolean term=NONE cterm=NONE ctermbg=bg ctermfg=173 gui=NONE guibg=bg guifg=#cf6a4c
    CSAHi javaScriptBraces term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
    CSAHi pythonClassVariable term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
    CSAHi Define term=NONE cterm=NONE ctermbg=bg ctermfg=109 gui=NONE guibg=bg guifg=#7587a6
    CSAHi cssColor term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
    CSAHi SpecialKey term=bold cterm=NONE ctermbg=bg ctermfg=238 gui=NONE guibg=bg guifg=#424242
    CSAHi NonText term=bold cterm=bold ctermbg=bg ctermfg=238 gui=bold guibg=bg guifg=#424242
    CSAHi Directory term=bold cterm=NONE ctermbg=bg ctermfg=109 gui=NONE guibg=bg guifg=#6c8095
    CSAHi ErrorMsg term=NONE cterm=NONE ctermbg=bg ctermfg=173 gui=NONE guibg=bg guifg=#cf6a4c
    CSAHi IncSearch term=reverse cterm=NONE ctermbg=234 ctermfg=249 gui=reverse guibg=#b6b6b6 guifg=#212121
    CSAHi Search term=reverse cterm=underline ctermbg=bg ctermfg=223 gui=underline guibg=bg guifg=#eedd82
    CSAHi MoreMsg term=bold cterm=bold ctermbg=bg ctermfg=144 gui=bold guibg=bg guifg=#8f9d6a
    CSAHi ModeMsg term=bold cterm=bold ctermbg=bg ctermfg=144 gui=bold guibg=bg guifg=#8f9d6a
    CSAHi LineNr term=underline cterm=NONE ctermbg=bg ctermfg=238 gui=NONE guibg=bg guifg=#424242
    CSAHi makoDelimiter term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
    CSAHi cssURL term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
    CSAHi makoComment term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
    CSAHi Exception term=NONE cterm=NONE ctermbg=bg ctermfg=173 gui=NONE guibg=bg guifg=#cf6a4c
    CSAHi Variable term=NONE cterm=NONE ctermbg=bg ctermfg=109 gui=NONE guibg=bg guifg=#7587a6
    CSAHi pythonClass term=NONE cterm=NONE ctermbg=bg ctermfg=180 gui=NONE guibg=bg guifg=#cda869
    CSAHi pythonFunction term=NONE cterm=NONE ctermbg=bg ctermfg=173 gui=NONE guibg=bg guifg=#cf6a4c
    CSAHi pythonInterpolationDelimiter term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
    CSAHi pythonSymbol term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
    CSAHi pythonBuiltin term=NONE cterm=NONE ctermbg=bg ctermfg=146 gui=NONE guibg=bg guifg=#9ca9b7
    CSAHi SpellLocal term=underline cterm=undercurl ctermbg=bg ctermfg=fg gui=undercurl guibg=bg guifg=fg guisp=#00ffff
    CSAHi Pmenu term=NONE cterm=NONE ctermbg=146 ctermfg=234 gui=NONE guibg=#9ca9b7 guifg=#212121
    CSAHi PmenuSel term=NONE cterm=NONE ctermbg=109 ctermfg=231 gui=NONE guibg=#6c8095 guifg=#ffffff
    CSAHi PmenuSbar term=NONE cterm=NONE ctermbg=249 ctermfg=fg gui=NONE guibg=#b6b6b6 guifg=fg
    CSAHi PmenuThumb term=NONE cterm=NONE ctermbg=238 ctermfg=16 gui=reverse guibg=bg guifg=#424242
    CSAHi TabLine term=underline cterm=underline ctermbg=248 ctermfg=fg gui=underline guibg=#a9a9a9 guifg=fg
    CSAHi TabLineSel term=bold cterm=bold ctermbg=bg ctermfg=fg gui=bold guibg=bg guifg=fg
    CSAHi TabLineFill term=reverse cterm=NONE ctermbg=231 ctermfg=16 gui=reverse guibg=bg guifg=fg
    CSAHi CursorColumn term=reverse cterm=NONE ctermbg=102 ctermfg=fg gui=NONE guibg=#666666 guifg=fg
    CSAHi CursorLine term=underline cterm=NONE ctermbg=109 ctermfg=231 gui=NONE guibg=#6c8095 guifg=#ffffff
    CSAHi cssClassName term=NONE cterm=NONE ctermbg=bg ctermfg=180 gui=NONE guibg=bg guifg=#cda869
    CSAHi cssFunctionName term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
    CSAHi Float term=NONE cterm=NONE ctermbg=bg ctermfg=173 gui=NONE guibg=bg guifg=#cf6a4c
    CSAHi SpecialComment term=NONE cterm=NONE ctermbg=bg ctermfg=110 gui=NONE guibg=bg guifg=#4f94cd
    CSAHi Keyword term=NONE cterm=NONE ctermbg=bg ctermfg=180 gui=NONE guibg=bg guifg=#cda869
    CSAHi Question term=NONE cterm=bold ctermbg=bg ctermfg=46 gui=bold guibg=bg guifg=#00ff00
    CSAHi StatusLine term=reverse,bold cterm=bold ctermbg=146 ctermfg=238 gui=reverse,bold guibg=#424242 guifg=#9ca9b7
    CSAHi StatusLineNC term=reverse cterm=NONE ctermbg=146 ctermfg=234 gui=reverse guibg=#212121 guifg=#9ca9b7
    CSAHi VertSplit term=reverse cterm=NONE ctermbg=249 ctermfg=248 gui=reverse guibg=#a6a6a6 guifg=#b6b6b6
    CSAHi Title term=bold cterm=NONE ctermbg=bg ctermfg=173 gui=NONE guibg=bg guifg=#cf6a4c
    CSAHi Visual term=reverse cterm=NONE ctermbg=146 ctermfg=234 gui=italic guibg=#9ca9b7 guifg=#212121
    CSAHi VisualNOS term=bold,underline cterm=bold,underline ctermbg=bg ctermfg=fg gui=bold,underline guibg=bg guifg=fg
    CSAHi WarningMsg term=NONE cterm=NONE ctermbg=bg ctermfg=223 gui=NONE guibg=bg guifg=#eedd82
    CSAHi WildMenu term=NONE cterm=NONE ctermbg=231 ctermfg=109 gui=NONE guibg=#ffffff guifg=#6c8095
    CSAHi Folded term=NONE cterm=NONE ctermbg=bg ctermfg=146 gui=italic guibg=bg guifg=#9ca9b7
    CSAHi htmlTag term=NONE cterm=NONE ctermbg=bg ctermfg=180 gui=NONE guibg=bg guifg=#cda869
    CSAHi htmlEndTag term=NONE cterm=NONE ctermbg=bg ctermfg=180 gui=NONE guibg=bg guifg=#cda869
    CSAHi htmlTagName term=NONE cterm=NONE ctermbg=bg ctermfg=249 gui=NONE guibg=bg guifg=#b6b6b6
    CSAHi htmlArg term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
    CSAHi pythonRegexp term=NONE cterm=NONE ctermbg=bg ctermfg=109 gui=NONE guibg=bg guifg=#6c8095
    CSAHi pythonRegexpDelimiter term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
    CSAHi pythonEscape term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
    CSAHi pythonControl term=NONE cterm=NONE ctermbg=bg ctermfg=110 gui=NONE guibg=bg guifg=#4f94cd
    CSAHi vimFold term=NONE cterm=NONE ctermbg=bg ctermfg=189 gui=italic guibg=bg guifg=#dee4ea
    CSAHi pythonOperator term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
    CSAHi pythonException term=NONE cterm=NONE ctermbg=bg ctermfg=173 gui=NONE guibg=bg guifg=#cf6a4c
    CSAHi ColorColumn term=reverse cterm=NONE ctermbg=124 ctermfg=fg gui=NONE guibg=#8b0000 guifg=fg
    CSAHi Cursor term=NONE cterm=NONE ctermbg=146 ctermfg=234 gui=NONE guibg=#9ca9b7 guifg=#212121
    CSAHi lCursor term=NONE cterm=NONE ctermbg=231 ctermfg=16 gui=NONE guibg=#ffffff guifg=#030303
    CSAHi MatchParen term=reverse cterm=NONE ctermbg=109 ctermfg=231 gui=NONE guibg=#6c8095 guifg=#ffffff
    CSAHi Comment term=bold cterm=NONE ctermbg=bg ctermfg=102 gui=italic guibg=bg guifg=#646959
    CSAHi Constant term=underline cterm=NONE ctermbg=bg ctermfg=109 gui=NONE guibg=bg guifg=#7587a6
    CSAHi Special term=bold cterm=bold ctermbg=bg ctermfg=fg gui=bold guibg=bg guifg=fg
    CSAHi Identifier term=underline cterm=NONE ctermbg=bg ctermfg=109 gui=NONE guibg=bg guifg=#7587a6
    CSAHi Statement term=bold cterm=NONE ctermbg=bg ctermfg=180 gui=NONE guibg=bg guifg=#cda869
    CSAHi pythonPseudoVariable term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
    CSAHi pythonInstanceVariable term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
    CSAHi pythonRequire term=NONE cterm=NONE ctermbg=bg ctermfg=144 gui=NONE guibg=bg guifg=#8f9d6a
    CSAHi Typedef term=NONE cterm=NONE ctermbg=bg ctermfg=180 gui=NONE guibg=bg guifg=#cda869
    CSAHi SpecialChar term=NONE cterm=NONE ctermbg=bg ctermfg=109 gui=NONE guibg=bg guifg=#7587a6
    CSAHi FoldColumn term=NONE cterm=NONE ctermbg=bg ctermfg=146 gui=italic guibg=bg guifg=#9ca9b7
    CSAHi DiffAdd term=bold cterm=NONE ctermbg=144 ctermfg=231 gui=NONE guibg=#8f9d6a guifg=#ffffff
    CSAHi DiffChange term=bold cterm=NONE ctermbg=180 ctermfg=16 gui=NONE guibg=#cda869 guifg=#000000
    CSAHi DiffDelete term=bold cterm=bold ctermbg=173 ctermfg=231 gui=bold guibg=#cf5c39 guifg=#ffffff
    CSAHi DiffText term=reverse cterm=bold ctermbg=249 ctermfg=16 gui=bold guibg=#b6b6b6 guifg=#000000
    CSAHi SignColumn term=NONE cterm=NONE ctermbg=250 ctermfg=51 gui=NONE guibg=#bebebe guifg=#00ffff
    CSAHi Conceal term=NONE cterm=NONE ctermbg=248 ctermfg=252 gui=NONE guibg=#a9a9a9 guifg=#d3d3d3
    CSAHi SpellBad term=reverse cterm=undercurl ctermbg=bg ctermfg=fg gui=undercurl guibg=bg guifg=fg guisp=#ff0000
    CSAHi SpellCap term=reverse cterm=undercurl ctermbg=bg ctermfg=fg gui=undercurl guibg=bg guifg=fg guisp=#0000ff
    CSAHi SpellRare term=reverse cterm=undercurl ctermbg=bg ctermfg=fg gui=undercurl guibg=bg guifg=fg guisp=#ff00ff
elseif has("gui_running") || (&t_Co == 256 && (&term ==# "xterm" || &term =~# "^screen") && exists("g:CSApprox_eterm") && g:CSApprox_eterm) || &term =~? "^eterm"
    CSAHi Normal term=NONE cterm=NONE ctermbg=16 ctermfg=255 gui=NONE guibg=#030303 guifg=#ffffff
    CSAHi cssPseudoClassId term=NONE cterm=NONE ctermbg=bg ctermfg=146 gui=NONE guibg=bg guifg=#7587a6
    CSAHi htmlSpecialChar term=NONE cterm=NONE ctermbg=bg ctermfg=210 gui=NONE guibg=bg guifg=#cf6a4c
    CSAHi cssValueLength term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
    CSAHi cssCommonAttr term=NONE cterm=NONE ctermbg=bg ctermfg=210 gui=NONE guibg=bg guifg=#cf6a4c
    CSAHi cssBraces term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
    CSAHi pythonGlobalVariable term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
    CSAHi javaScriptFunction term=NONE cterm=NONE ctermbg=bg ctermfg=210 gui=NONE guibg=bg guifg=#cf6a4c
    CSAHi PreProc term=underline cterm=NONE ctermbg=bg ctermfg=146 gui=NONE guibg=bg guifg=#7587a6
    CSAHi Type term=underline cterm=NONE ctermbg=bg ctermfg=182 gui=NONE guibg=bg guifg=#9b859d
    CSAHi Underlined term=underline cterm=underline ctermbg=bg ctermfg=153 gui=underline guibg=bg guifg=#80a0ff
    CSAHi Ignore term=NONE cterm=NONE ctermbg=bg ctermfg=244 gui=NONE guibg=bg guifg=#848484
    CSAHi Error term=reverse cterm=underline ctermbg=bg ctermfg=210 gui=underline guibg=bg guifg=#cf6a4c
    CSAHi Todo term=NONE cterm=bold ctermbg=bg ctermfg=230 gui=bold guibg=bg guifg=#f9ee98
    CSAHi String term=NONE cterm=NONE ctermbg=bg ctermfg=150 gui=NONE guibg=bg guifg=#8f9d6a
    CSAHi Number term=NONE cterm=NONE ctermbg=bg ctermfg=210 gui=NONE guibg=bg guifg=#cf6a4c
    CSAHi Boolean term=NONE cterm=NONE ctermbg=bg ctermfg=210 gui=NONE guibg=bg guifg=#cf6a4c
    CSAHi javaScriptBraces term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
    CSAHi pythonClassVariable term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
    CSAHi Define term=NONE cterm=NONE ctermbg=bg ctermfg=146 gui=NONE guibg=bg guifg=#7587a6
    CSAHi cssColor term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
    CSAHi SpecialKey term=bold cterm=NONE ctermbg=bg ctermfg=238 gui=NONE guibg=bg guifg=#424242
    CSAHi NonText term=bold cterm=bold ctermbg=bg ctermfg=238 gui=bold guibg=bg guifg=#424242
    CSAHi Directory term=bold cterm=NONE ctermbg=bg ctermfg=146 gui=NONE guibg=bg guifg=#6c8095
    CSAHi ErrorMsg term=NONE cterm=NONE ctermbg=bg ctermfg=210 gui=NONE guibg=bg guifg=#cf6a4c
    CSAHi IncSearch term=reverse cterm=NONE ctermbg=234 ctermfg=249 gui=reverse guibg=#b6b6b6 guifg=#212121
    CSAHi Search term=reverse cterm=underline ctermbg=bg ctermfg=229 gui=underline guibg=bg guifg=#eedd82
    CSAHi MoreMsg term=bold cterm=bold ctermbg=bg ctermfg=150 gui=bold guibg=bg guifg=#8f9d6a
    CSAHi ModeMsg term=bold cterm=bold ctermbg=bg ctermfg=150 gui=bold guibg=bg guifg=#8f9d6a
    CSAHi LineNr term=underline cterm=NONE ctermbg=bg ctermfg=238 gui=NONE guibg=bg guifg=#424242
    CSAHi makoDelimiter term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
    CSAHi cssURL term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
    CSAHi makoComment term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
    CSAHi Exception term=NONE cterm=NONE ctermbg=bg ctermfg=210 gui=NONE guibg=bg guifg=#cf6a4c
    CSAHi Variable term=NONE cterm=NONE ctermbg=bg ctermfg=146 gui=NONE guibg=bg guifg=#7587a6
    CSAHi pythonClass term=NONE cterm=NONE ctermbg=bg ctermfg=222 gui=NONE guibg=bg guifg=#cda869
    CSAHi pythonFunction term=NONE cterm=NONE ctermbg=bg ctermfg=210 gui=NONE guibg=bg guifg=#cf6a4c
    CSAHi pythonInterpolationDelimiter term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
    CSAHi pythonSymbol term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
    CSAHi pythonBuiltin term=NONE cterm=NONE ctermbg=bg ctermfg=188 gui=NONE guibg=bg guifg=#9ca9b7
    CSAHi SpellLocal term=underline cterm=undercurl ctermbg=bg ctermfg=fg gui=undercurl guibg=bg guifg=fg guisp=#00ffff
    CSAHi Pmenu term=NONE cterm=NONE ctermbg=188 ctermfg=234 gui=NONE guibg=#9ca9b7 guifg=#212121
    CSAHi PmenuSel term=NONE cterm=NONE ctermbg=146 ctermfg=255 gui=NONE guibg=#6c8095 guifg=#ffffff
    CSAHi PmenuSbar term=NONE cterm=NONE ctermbg=249 ctermfg=fg gui=NONE guibg=#b6b6b6 guifg=fg
    CSAHi PmenuThumb term=NONE cterm=NONE ctermbg=238 ctermfg=16 gui=reverse guibg=bg guifg=#424242
    CSAHi TabLine term=underline cterm=underline ctermbg=248 ctermfg=fg gui=underline guibg=#a9a9a9 guifg=fg
    CSAHi TabLineSel term=bold cterm=bold ctermbg=bg ctermfg=fg gui=bold guibg=bg guifg=fg
    CSAHi TabLineFill term=reverse cterm=NONE ctermbg=255 ctermfg=16 gui=reverse guibg=bg guifg=fg
    CSAHi CursorColumn term=reverse cterm=NONE ctermbg=241 ctermfg=fg gui=NONE guibg=#666666 guifg=fg
    CSAHi CursorLine term=underline cterm=NONE ctermbg=146 ctermfg=255 gui=NONE guibg=#6c8095 guifg=#ffffff
    CSAHi cssClassName term=NONE cterm=NONE ctermbg=bg ctermfg=222 gui=NONE guibg=bg guifg=#cda869
    CSAHi cssFunctionName term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
    CSAHi Float term=NONE cterm=NONE ctermbg=bg ctermfg=210 gui=NONE guibg=bg guifg=#cf6a4c
    CSAHi SpecialComment term=NONE cterm=NONE ctermbg=bg ctermfg=111 gui=NONE guibg=bg guifg=#4f94cd
    CSAHi Keyword term=NONE cterm=NONE ctermbg=bg ctermfg=222 gui=NONE guibg=bg guifg=#cda869
    CSAHi Question term=NONE cterm=bold ctermbg=bg ctermfg=46 gui=bold guibg=bg guifg=#00ff00
    CSAHi StatusLine term=reverse,bold cterm=bold ctermbg=188 ctermfg=238 gui=reverse,bold guibg=#424242 guifg=#9ca9b7
    CSAHi StatusLineNC term=reverse cterm=NONE ctermbg=188 ctermfg=234 gui=reverse guibg=#212121 guifg=#9ca9b7
    CSAHi VertSplit term=reverse cterm=NONE ctermbg=249 ctermfg=248 gui=reverse guibg=#a6a6a6 guifg=#b6b6b6
    CSAHi Title term=bold cterm=NONE ctermbg=bg ctermfg=210 gui=NONE guibg=bg guifg=#cf6a4c
    CSAHi Visual term=reverse cterm=NONE ctermbg=188 ctermfg=234 gui=italic guibg=#9ca9b7 guifg=#212121
    CSAHi VisualNOS term=bold,underline cterm=bold,underline ctermbg=bg ctermfg=fg gui=bold,underline guibg=bg guifg=fg
    CSAHi WarningMsg term=NONE cterm=NONE ctermbg=bg ctermfg=229 gui=NONE guibg=bg guifg=#eedd82
    CSAHi WildMenu term=NONE cterm=NONE ctermbg=255 ctermfg=146 gui=NONE guibg=#ffffff guifg=#6c8095
    CSAHi Folded term=NONE cterm=NONE ctermbg=bg ctermfg=188 gui=italic guibg=bg guifg=#9ca9b7
    CSAHi htmlTag term=NONE cterm=NONE ctermbg=bg ctermfg=222 gui=NONE guibg=bg guifg=#cda869
    CSAHi htmlEndTag term=NONE cterm=NONE ctermbg=bg ctermfg=222 gui=NONE guibg=bg guifg=#cda869
    CSAHi htmlTagName term=NONE cterm=NONE ctermbg=bg ctermfg=249 gui=NONE guibg=bg guifg=#b6b6b6
    CSAHi htmlArg term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
    CSAHi pythonRegexp term=NONE cterm=NONE ctermbg=bg ctermfg=146 gui=NONE guibg=bg guifg=#6c8095
    CSAHi pythonRegexpDelimiter term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
    CSAHi pythonEscape term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
    CSAHi pythonControl term=NONE cterm=NONE ctermbg=bg ctermfg=111 gui=NONE guibg=bg guifg=#4f94cd
    CSAHi vimFold term=NONE cterm=NONE ctermbg=bg ctermfg=231 gui=italic guibg=bg guifg=#dee4ea
    CSAHi pythonOperator term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
    CSAHi pythonException term=NONE cterm=NONE ctermbg=bg ctermfg=210 gui=NONE guibg=bg guifg=#cf6a4c
    CSAHi ColorColumn term=reverse cterm=NONE ctermbg=124 ctermfg=fg gui=NONE guibg=#8b0000 guifg=fg
    CSAHi Cursor term=NONE cterm=NONE ctermbg=188 ctermfg=234 gui=NONE guibg=#9ca9b7 guifg=#212121
    CSAHi lCursor term=NONE cterm=NONE ctermbg=255 ctermfg=16 gui=NONE guibg=#ffffff guifg=#030303
    CSAHi MatchParen term=reverse cterm=NONE ctermbg=146 ctermfg=255 gui=NONE guibg=#6c8095 guifg=#ffffff
    CSAHi Comment term=bold cterm=NONE ctermbg=bg ctermfg=102 gui=italic guibg=bg guifg=#646959
    CSAHi Constant term=underline cterm=NONE ctermbg=bg ctermfg=146 gui=NONE guibg=bg guifg=#7587a6
    CSAHi Special term=bold cterm=bold ctermbg=bg ctermfg=fg gui=bold guibg=bg guifg=fg
    CSAHi Identifier term=underline cterm=NONE ctermbg=bg ctermfg=146 gui=NONE guibg=bg guifg=#7587a6
    CSAHi Statement term=bold cterm=NONE ctermbg=bg ctermfg=222 gui=NONE guibg=bg guifg=#cda869
    CSAHi pythonPseudoVariable term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
    CSAHi pythonInstanceVariable term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
    CSAHi pythonRequire term=NONE cterm=NONE ctermbg=bg ctermfg=150 gui=NONE guibg=bg guifg=#8f9d6a
    CSAHi Typedef term=NONE cterm=NONE ctermbg=bg ctermfg=222 gui=NONE guibg=bg guifg=#cda869
    CSAHi SpecialChar term=NONE cterm=NONE ctermbg=bg ctermfg=146 gui=NONE guibg=bg guifg=#7587a6
    CSAHi FoldColumn term=NONE cterm=NONE ctermbg=bg ctermfg=188 gui=italic guibg=bg guifg=#9ca9b7
    CSAHi DiffAdd term=bold cterm=NONE ctermbg=150 ctermfg=255 gui=NONE guibg=#8f9d6a guifg=#ffffff
    CSAHi DiffChange term=bold cterm=NONE ctermbg=222 ctermfg=16 gui=NONE guibg=#cda869 guifg=#000000
    CSAHi DiffDelete term=bold cterm=bold ctermbg=209 ctermfg=255 gui=bold guibg=#cf5c39 guifg=#ffffff
    CSAHi DiffText term=reverse cterm=bold ctermbg=249 ctermfg=16 gui=bold guibg=#b6b6b6 guifg=#000000
    CSAHi SignColumn term=NONE cterm=NONE ctermbg=250 ctermfg=51 gui=NONE guibg=#bebebe guifg=#00ffff
    CSAHi Conceal term=NONE cterm=NONE ctermbg=248 ctermfg=231 gui=NONE guibg=#a9a9a9 guifg=#d3d3d3
    CSAHi SpellBad term=reverse cterm=undercurl ctermbg=bg ctermfg=fg gui=undercurl guibg=bg guifg=fg guisp=#ff0000
    CSAHi SpellCap term=reverse cterm=undercurl ctermbg=bg ctermfg=fg gui=undercurl guibg=bg guifg=fg guisp=#0000ff
    CSAHi SpellRare term=reverse cterm=undercurl ctermbg=bg ctermfg=fg gui=undercurl guibg=bg guifg=fg guisp=#ff00ff
elseif has("gui_running") || &t_Co == 256
    CSAHi Normal term=NONE cterm=NONE ctermbg=16 ctermfg=231 gui=NONE guibg=#030303 guifg=#ffffff
    CSAHi cssPseudoClassId term=NONE cterm=NONE ctermbg=bg ctermfg=103 gui=NONE guibg=bg guifg=#7587a6
    CSAHi htmlSpecialChar term=NONE cterm=NONE ctermbg=bg ctermfg=167 gui=NONE guibg=bg guifg=#cf6a4c
    CSAHi cssValueLength term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
    CSAHi cssCommonAttr term=NONE cterm=NONE ctermbg=bg ctermfg=167 gui=NONE guibg=bg guifg=#cf6a4c
    CSAHi cssBraces term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
    CSAHi pythonGlobalVariable term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
    CSAHi javaScriptFunction term=NONE cterm=NONE ctermbg=bg ctermfg=167 gui=NONE guibg=bg guifg=#cf6a4c
    CSAHi PreProc term=underline cterm=NONE ctermbg=bg ctermfg=103 gui=NONE guibg=bg guifg=#7587a6
    CSAHi Type term=underline cterm=NONE ctermbg=bg ctermfg=103 gui=NONE guibg=bg guifg=#9b859d
    CSAHi Underlined term=underline cterm=underline ctermbg=bg ctermfg=111 gui=underline guibg=bg guifg=#80a0ff
    CSAHi Ignore term=NONE cterm=NONE ctermbg=bg ctermfg=102 gui=NONE guibg=bg guifg=#848484
    CSAHi Error term=reverse cterm=underline ctermbg=bg ctermfg=167 gui=underline guibg=bg guifg=#cf6a4c
    CSAHi Todo term=NONE cterm=bold ctermbg=bg ctermfg=228 gui=bold guibg=bg guifg=#f9ee98
    CSAHi String term=NONE cterm=NONE ctermbg=bg ctermfg=107 gui=NONE guibg=bg guifg=#8f9d6a
    CSAHi Number term=NONE cterm=NONE ctermbg=bg ctermfg=167 gui=NONE guibg=bg guifg=#cf6a4c
    CSAHi Boolean term=NONE cterm=NONE ctermbg=bg ctermfg=167 gui=NONE guibg=bg guifg=#cf6a4c
    CSAHi javaScriptBraces term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
    CSAHi pythonClassVariable term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
    CSAHi Define term=NONE cterm=NONE ctermbg=bg ctermfg=103 gui=NONE guibg=bg guifg=#7587a6
    CSAHi cssColor term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
    CSAHi SpecialKey term=bold cterm=NONE ctermbg=bg ctermfg=238 gui=NONE guibg=bg guifg=#424242
    CSAHi NonText term=bold cterm=bold ctermbg=bg ctermfg=238 gui=bold guibg=bg guifg=#424242
    CSAHi Directory term=bold cterm=NONE ctermbg=bg ctermfg=66 gui=NONE guibg=bg guifg=#6c8095
    CSAHi ErrorMsg term=NONE cterm=NONE ctermbg=bg ctermfg=167 gui=NONE guibg=bg guifg=#cf6a4c
    CSAHi IncSearch term=reverse cterm=NONE ctermbg=234 ctermfg=249 gui=reverse guibg=#b6b6b6 guifg=#212121
    CSAHi Search term=reverse cterm=underline ctermbg=bg ctermfg=222 gui=underline guibg=bg guifg=#eedd82
    CSAHi MoreMsg term=bold cterm=bold ctermbg=bg ctermfg=107 gui=bold guibg=bg guifg=#8f9d6a
    CSAHi ModeMsg term=bold cterm=bold ctermbg=bg ctermfg=107 gui=bold guibg=bg guifg=#8f9d6a
    CSAHi LineNr term=underline cterm=NONE ctermbg=bg ctermfg=238 gui=NONE guibg=bg guifg=#424242
    CSAHi makoDelimiter term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
    CSAHi cssURL term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
    CSAHi makoComment term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
    CSAHi Exception term=NONE cterm=NONE ctermbg=bg ctermfg=167 gui=NONE guibg=bg guifg=#cf6a4c
    CSAHi Variable term=NONE cterm=NONE ctermbg=bg ctermfg=103 gui=NONE guibg=bg guifg=#7587a6
    CSAHi pythonClass term=NONE cterm=NONE ctermbg=bg ctermfg=179 gui=NONE guibg=bg guifg=#cda869
    CSAHi pythonFunction term=NONE cterm=NONE ctermbg=bg ctermfg=167 gui=NONE guibg=bg guifg=#cf6a4c
    CSAHi pythonInterpolationDelimiter term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
    CSAHi pythonSymbol term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
    CSAHi pythonBuiltin term=NONE cterm=NONE ctermbg=bg ctermfg=145 gui=NONE guibg=bg guifg=#9ca9b7
    CSAHi SpellLocal term=underline cterm=undercurl ctermbg=bg ctermfg=fg gui=undercurl guibg=bg guifg=fg guisp=#00ffff
    CSAHi Pmenu term=NONE cterm=NONE ctermbg=145 ctermfg=234 gui=NONE guibg=#9ca9b7 guifg=#212121
    CSAHi PmenuSel term=NONE cterm=NONE ctermbg=66 ctermfg=231 gui=NONE guibg=#6c8095 guifg=#ffffff
    CSAHi PmenuSbar term=NONE cterm=NONE ctermbg=249 ctermfg=fg gui=NONE guibg=#b6b6b6 guifg=fg
    CSAHi PmenuThumb term=NONE cterm=NONE ctermbg=238 ctermfg=16 gui=reverse guibg=bg guifg=#424242
    CSAHi TabLine term=underline cterm=underline ctermbg=248 ctermfg=fg gui=underline guibg=#a9a9a9 guifg=fg
    CSAHi TabLineSel term=bold cterm=bold ctermbg=bg ctermfg=fg gui=bold guibg=bg guifg=fg
    CSAHi TabLineFill term=reverse cterm=NONE ctermbg=231 ctermfg=16 gui=reverse guibg=bg guifg=fg
    CSAHi CursorColumn term=reverse cterm=NONE ctermbg=241 ctermfg=fg gui=NONE guibg=#666666 guifg=fg
    CSAHi CursorLine term=underline cterm=NONE ctermbg=66 ctermfg=231 gui=NONE guibg=#6c8095 guifg=#ffffff
    CSAHi cssClassName term=NONE cterm=NONE ctermbg=bg ctermfg=179 gui=NONE guibg=bg guifg=#cda869
    CSAHi cssFunctionName term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
    CSAHi Float term=NONE cterm=NONE ctermbg=bg ctermfg=167 gui=NONE guibg=bg guifg=#cf6a4c
    CSAHi SpecialComment term=NONE cterm=NONE ctermbg=bg ctermfg=68 gui=NONE guibg=bg guifg=#4f94cd
    CSAHi Keyword term=NONE cterm=NONE ctermbg=bg ctermfg=179 gui=NONE guibg=bg guifg=#cda869
    CSAHi Question term=NONE cterm=bold ctermbg=bg ctermfg=46 gui=bold guibg=bg guifg=#00ff00
    CSAHi StatusLine term=reverse,bold cterm=bold ctermbg=145 ctermfg=238 gui=reverse,bold guibg=#424242 guifg=#9ca9b7
    CSAHi StatusLineNC term=reverse cterm=NONE ctermbg=145 ctermfg=234 gui=reverse guibg=#212121 guifg=#9ca9b7
    CSAHi VertSplit term=reverse cterm=NONE ctermbg=249 ctermfg=248 gui=reverse guibg=#a6a6a6 guifg=#b6b6b6
    CSAHi Title term=bold cterm=NONE ctermbg=bg ctermfg=167 gui=NONE guibg=bg guifg=#cf6a4c
    CSAHi Visual term=reverse cterm=NONE ctermbg=145 ctermfg=234 gui=italic guibg=#9ca9b7 guifg=#212121
    CSAHi VisualNOS term=bold,underline cterm=bold,underline ctermbg=bg ctermfg=fg gui=bold,underline guibg=bg guifg=fg
    CSAHi WarningMsg term=NONE cterm=NONE ctermbg=bg ctermfg=222 gui=NONE guibg=bg guifg=#eedd82
    CSAHi WildMenu term=NONE cterm=NONE ctermbg=231 ctermfg=66 gui=NONE guibg=#ffffff guifg=#6c8095
    CSAHi Folded term=NONE cterm=NONE ctermbg=bg ctermfg=145 gui=italic guibg=bg guifg=#9ca9b7
    CSAHi htmlTag term=NONE cterm=NONE ctermbg=bg ctermfg=179 gui=NONE guibg=bg guifg=#cda869
    CSAHi htmlEndTag term=NONE cterm=NONE ctermbg=bg ctermfg=179 gui=NONE guibg=bg guifg=#cda869
    CSAHi htmlTagName term=NONE cterm=NONE ctermbg=bg ctermfg=249 gui=NONE guibg=bg guifg=#b6b6b6
    CSAHi htmlArg term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
    CSAHi pythonRegexp term=NONE cterm=NONE ctermbg=bg ctermfg=66 gui=NONE guibg=bg guifg=#6c8095
    CSAHi pythonRegexpDelimiter term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
    CSAHi pythonEscape term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
    CSAHi pythonControl term=NONE cterm=NONE ctermbg=bg ctermfg=68 gui=NONE guibg=bg guifg=#4f94cd
    CSAHi vimFold term=NONE cterm=NONE ctermbg=bg ctermfg=188 gui=italic guibg=bg guifg=#dee4ea
    CSAHi pythonOperator term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
    CSAHi pythonException term=NONE cterm=NONE ctermbg=bg ctermfg=167 gui=NONE guibg=bg guifg=#cf6a4c
    CSAHi ColorColumn term=reverse cterm=NONE ctermbg=88 ctermfg=fg gui=NONE guibg=#8b0000 guifg=fg
    CSAHi Cursor term=NONE cterm=NONE ctermbg=145 ctermfg=234 gui=NONE guibg=#9ca9b7 guifg=#212121
    CSAHi lCursor term=NONE cterm=NONE ctermbg=231 ctermfg=16 gui=NONE guibg=#ffffff guifg=#030303
    CSAHi MatchParen term=reverse cterm=NONE ctermbg=66 ctermfg=231 gui=NONE guibg=#6c8095 guifg=#ffffff
    CSAHi Comment term=bold cterm=NONE ctermbg=bg ctermfg=59 gui=italic guibg=bg guifg=#646959
    CSAHi Constant term=underline cterm=NONE ctermbg=bg ctermfg=103 gui=NONE guibg=bg guifg=#7587a6
    CSAHi Special term=bold cterm=bold ctermbg=bg ctermfg=fg gui=bold guibg=bg guifg=fg
    CSAHi Identifier term=underline cterm=NONE ctermbg=bg ctermfg=103 gui=NONE guibg=bg guifg=#7587a6
    CSAHi Statement term=bold cterm=NONE ctermbg=bg ctermfg=179 gui=NONE guibg=bg guifg=#cda869
    CSAHi pythonPseudoVariable term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
    CSAHi pythonInstanceVariable term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
    CSAHi pythonRequire term=NONE cterm=NONE ctermbg=bg ctermfg=107 gui=NONE guibg=bg guifg=#8f9d6a
    CSAHi Typedef term=NONE cterm=NONE ctermbg=bg ctermfg=179 gui=NONE guibg=bg guifg=#cda869
    CSAHi SpecialChar term=NONE cterm=NONE ctermbg=bg ctermfg=103 gui=NONE guibg=bg guifg=#7587a6
    CSAHi FoldColumn term=NONE cterm=NONE ctermbg=bg ctermfg=145 gui=italic guibg=bg guifg=#9ca9b7
    CSAHi DiffAdd term=bold cterm=NONE ctermbg=107 ctermfg=231 gui=NONE guibg=#8f9d6a guifg=#ffffff
    CSAHi DiffChange term=bold cterm=NONE ctermbg=179 ctermfg=16 gui=NONE guibg=#cda869 guifg=#000000
    CSAHi DiffDelete term=bold cterm=bold ctermbg=167 ctermfg=231 gui=bold guibg=#cf5c39 guifg=#ffffff
    CSAHi DiffText term=reverse cterm=bold ctermbg=249 ctermfg=16 gui=bold guibg=#b6b6b6 guifg=#000000
    CSAHi SignColumn term=NONE cterm=NONE ctermbg=250 ctermfg=51 gui=NONE guibg=#bebebe guifg=#00ffff
    CSAHi Conceal term=NONE cterm=NONE ctermbg=248 ctermfg=252 gui=NONE guibg=#a9a9a9 guifg=#d3d3d3
    CSAHi SpellBad term=reverse cterm=undercurl ctermbg=bg ctermfg=fg gui=undercurl guibg=bg guifg=fg guisp=#ff0000
    CSAHi SpellCap term=reverse cterm=undercurl ctermbg=bg ctermfg=fg gui=undercurl guibg=bg guifg=fg guisp=#0000ff
    CSAHi SpellRare term=reverse cterm=undercurl ctermbg=bg ctermfg=fg gui=undercurl guibg=bg guifg=fg guisp=#ff00ff
elseif has("gui_running") || &t_Co == 88
    CSAHi Normal term=NONE cterm=NONE ctermbg=16 ctermfg=79 gui=NONE guibg=#030303 guifg=#ffffff
    CSAHi cssPseudoClassId term=NONE cterm=NONE ctermbg=bg ctermfg=37 gui=NONE guibg=bg guifg=#7587a6
    CSAHi htmlSpecialChar term=NONE cterm=NONE ctermbg=bg ctermfg=53 gui=NONE guibg=bg guifg=#cf6a4c
    CSAHi cssValueLength term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
    CSAHi cssCommonAttr term=NONE cterm=NONE ctermbg=bg ctermfg=53 gui=NONE guibg=bg guifg=#cf6a4c
    CSAHi cssBraces term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
    CSAHi pythonGlobalVariable term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
    CSAHi javaScriptFunction term=NONE cterm=NONE ctermbg=bg ctermfg=53 gui=NONE guibg=bg guifg=#cf6a4c
    CSAHi PreProc term=underline cterm=NONE ctermbg=bg ctermfg=37 gui=NONE guibg=bg guifg=#7587a6
    CSAHi Type term=underline cterm=NONE ctermbg=bg ctermfg=37 gui=NONE guibg=bg guifg=#9b859d
    CSAHi Underlined term=underline cterm=underline ctermbg=bg ctermfg=39 gui=underline guibg=bg guifg=#80a0ff
    CSAHi Ignore term=NONE cterm=NONE ctermbg=bg ctermfg=83 gui=NONE guibg=bg guifg=#848484
    CSAHi Error term=reverse cterm=underline ctermbg=bg ctermfg=53 gui=underline guibg=bg guifg=#cf6a4c
    CSAHi Todo term=NONE cterm=bold ctermbg=bg ctermfg=77 gui=bold guibg=bg guifg=#f9ee98
    CSAHi String term=NONE cterm=NONE ctermbg=bg ctermfg=37 gui=NONE guibg=bg guifg=#8f9d6a
    CSAHi Number term=NONE cterm=NONE ctermbg=bg ctermfg=53 gui=NONE guibg=bg guifg=#cf6a4c
    CSAHi Boolean term=NONE cterm=NONE ctermbg=bg ctermfg=53 gui=NONE guibg=bg guifg=#cf6a4c
    CSAHi javaScriptBraces term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
    CSAHi pythonClassVariable term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
    CSAHi Define term=NONE cterm=NONE ctermbg=bg ctermfg=37 gui=NONE guibg=bg guifg=#7587a6
    CSAHi cssColor term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
    CSAHi SpecialKey term=bold cterm=NONE ctermbg=bg ctermfg=80 gui=NONE guibg=bg guifg=#424242
    CSAHi NonText term=bold cterm=bold ctermbg=bg ctermfg=80 gui=bold guibg=bg guifg=#424242
    CSAHi Directory term=bold cterm=NONE ctermbg=bg ctermfg=37 gui=NONE guibg=bg guifg=#6c8095
    CSAHi ErrorMsg term=NONE cterm=NONE ctermbg=bg ctermfg=53 gui=NONE guibg=bg guifg=#cf6a4c
    CSAHi IncSearch term=reverse cterm=NONE ctermbg=80 ctermfg=85 gui=reverse guibg=#b6b6b6 guifg=#212121
    CSAHi Search term=reverse cterm=underline ctermbg=bg ctermfg=73 gui=underline guibg=bg guifg=#eedd82
    CSAHi MoreMsg term=bold cterm=bold ctermbg=bg ctermfg=37 gui=bold guibg=bg guifg=#8f9d6a
    CSAHi ModeMsg term=bold cterm=bold ctermbg=bg ctermfg=37 gui=bold guibg=bg guifg=#8f9d6a
    CSAHi LineNr term=underline cterm=NONE ctermbg=bg ctermfg=80 gui=NONE guibg=bg guifg=#424242
    CSAHi makoDelimiter term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
    CSAHi cssURL term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
    CSAHi makoComment term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
    CSAHi Exception term=NONE cterm=NONE ctermbg=bg ctermfg=53 gui=NONE guibg=bg guifg=#cf6a4c
    CSAHi Variable term=NONE cterm=NONE ctermbg=bg ctermfg=37 gui=NONE guibg=bg guifg=#7587a6
    CSAHi pythonClass term=NONE cterm=NONE ctermbg=bg ctermfg=53 gui=NONE guibg=bg guifg=#cda869
    CSAHi pythonFunction term=NONE cterm=NONE ctermbg=bg ctermfg=53 gui=NONE guibg=bg guifg=#cf6a4c
    CSAHi pythonInterpolationDelimiter term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
    CSAHi pythonSymbol term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
    CSAHi pythonBuiltin term=NONE cterm=NONE ctermbg=bg ctermfg=38 gui=NONE guibg=bg guifg=#9ca9b7
    CSAHi SpellLocal term=underline cterm=undercurl ctermbg=bg ctermfg=fg gui=undercurl guibg=bg guifg=fg guisp=#00ffff
    CSAHi Pmenu term=NONE cterm=NONE ctermbg=38 ctermfg=80 gui=NONE guibg=#9ca9b7 guifg=#212121
    CSAHi PmenuSel term=NONE cterm=NONE ctermbg=37 ctermfg=79 gui=NONE guibg=#6c8095 guifg=#ffffff
    CSAHi PmenuSbar term=NONE cterm=NONE ctermbg=85 ctermfg=fg gui=NONE guibg=#b6b6b6 guifg=fg
    CSAHi PmenuThumb term=NONE cterm=NONE ctermbg=80 ctermfg=16 gui=reverse guibg=bg guifg=#424242
    CSAHi TabLine term=underline cterm=underline ctermbg=84 ctermfg=fg gui=underline guibg=#a9a9a9 guifg=fg
    CSAHi TabLineSel term=bold cterm=bold ctermbg=bg ctermfg=fg gui=bold guibg=bg guifg=fg
    CSAHi TabLineFill term=reverse cterm=NONE ctermbg=79 ctermfg=16 gui=reverse guibg=bg guifg=fg
    CSAHi CursorColumn term=reverse cterm=NONE ctermbg=81 ctermfg=fg gui=NONE guibg=#666666 guifg=fg
    CSAHi CursorLine term=underline cterm=NONE ctermbg=37 ctermfg=79 gui=NONE guibg=#6c8095 guifg=#ffffff
    CSAHi cssClassName term=NONE cterm=NONE ctermbg=bg ctermfg=53 gui=NONE guibg=bg guifg=#cda869
    CSAHi cssFunctionName term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
    CSAHi Float term=NONE cterm=NONE ctermbg=bg ctermfg=53 gui=NONE guibg=bg guifg=#cf6a4c
    CSAHi SpecialComment term=NONE cterm=NONE ctermbg=bg ctermfg=38 gui=NONE guibg=bg guifg=#4f94cd
    CSAHi Keyword term=NONE cterm=NONE ctermbg=bg ctermfg=53 gui=NONE guibg=bg guifg=#cda869
    CSAHi Question term=NONE cterm=bold ctermbg=bg ctermfg=28 gui=bold guibg=bg guifg=#00ff00
    CSAHi StatusLine term=reverse,bold cterm=bold ctermbg=38 ctermfg=80 gui=reverse,bold guibg=#424242 guifg=#9ca9b7
    CSAHi StatusLineNC term=reverse cterm=NONE ctermbg=38 ctermfg=80 gui=reverse guibg=#212121 guifg=#9ca9b7
    CSAHi VertSplit term=reverse cterm=NONE ctermbg=85 ctermfg=84 gui=reverse guibg=#a6a6a6 guifg=#b6b6b6
    CSAHi Title term=bold cterm=NONE ctermbg=bg ctermfg=53 gui=NONE guibg=bg guifg=#cf6a4c
    CSAHi Visual term=reverse cterm=NONE ctermbg=38 ctermfg=80 gui=italic guibg=#9ca9b7 guifg=#212121
    CSAHi VisualNOS term=bold,underline cterm=bold,underline ctermbg=bg ctermfg=fg gui=bold,underline guibg=bg guifg=fg
    CSAHi WarningMsg term=NONE cterm=NONE ctermbg=bg ctermfg=73 gui=NONE guibg=bg guifg=#eedd82
    CSAHi WildMenu term=NONE cterm=NONE ctermbg=79 ctermfg=37 gui=NONE guibg=#ffffff guifg=#6c8095
    CSAHi Folded term=NONE cterm=NONE ctermbg=bg ctermfg=38 gui=italic guibg=bg guifg=#9ca9b7
    CSAHi htmlTag term=NONE cterm=NONE ctermbg=bg ctermfg=53 gui=NONE guibg=bg guifg=#cda869
    CSAHi htmlEndTag term=NONE cterm=NONE ctermbg=bg ctermfg=53 gui=NONE guibg=bg guifg=#cda869
    CSAHi htmlTagName term=NONE cterm=NONE ctermbg=bg ctermfg=85 gui=NONE guibg=bg guifg=#b6b6b6
    CSAHi htmlArg term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
    CSAHi pythonRegexp term=NONE cterm=NONE ctermbg=bg ctermfg=37 gui=NONE guibg=bg guifg=#6c8095
    CSAHi pythonRegexpDelimiter term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
    CSAHi pythonEscape term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
    CSAHi pythonControl term=NONE cterm=NONE ctermbg=bg ctermfg=38 gui=NONE guibg=bg guifg=#4f94cd
    CSAHi vimFold term=NONE cterm=NONE ctermbg=bg ctermfg=87 gui=italic guibg=bg guifg=#dee4ea
    CSAHi pythonOperator term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
    CSAHi pythonException term=NONE cterm=NONE ctermbg=bg ctermfg=53 gui=NONE guibg=bg guifg=#cf6a4c
    CSAHi ColorColumn term=reverse cterm=NONE ctermbg=32 ctermfg=fg gui=NONE guibg=#8b0000 guifg=fg
    CSAHi Cursor term=NONE cterm=NONE ctermbg=38 ctermfg=80 gui=NONE guibg=#9ca9b7 guifg=#212121
    CSAHi lCursor term=NONE cterm=NONE ctermbg=79 ctermfg=16 gui=NONE guibg=#ffffff guifg=#030303
    CSAHi MatchParen term=reverse cterm=NONE ctermbg=37 ctermfg=79 gui=NONE guibg=#6c8095 guifg=#ffffff
    CSAHi Comment term=bold cterm=NONE ctermbg=bg ctermfg=37 gui=italic guibg=bg guifg=#646959
    CSAHi Constant term=underline cterm=NONE ctermbg=bg ctermfg=37 gui=NONE guibg=bg guifg=#7587a6
    CSAHi Special term=bold cterm=bold ctermbg=bg ctermfg=fg gui=bold guibg=bg guifg=fg
    CSAHi Identifier term=underline cterm=NONE ctermbg=bg ctermfg=37 gui=NONE guibg=bg guifg=#7587a6
    CSAHi Statement term=bold cterm=NONE ctermbg=bg ctermfg=53 gui=NONE guibg=bg guifg=#cda869
    CSAHi pythonPseudoVariable term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
    CSAHi pythonInstanceVariable term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
    CSAHi pythonRequire term=NONE cterm=NONE ctermbg=bg ctermfg=37 gui=NONE guibg=bg guifg=#8f9d6a
    CSAHi Typedef term=NONE cterm=NONE ctermbg=bg ctermfg=53 gui=NONE guibg=bg guifg=#cda869
    CSAHi SpecialChar term=NONE cterm=NONE ctermbg=bg ctermfg=37 gui=NONE guibg=bg guifg=#7587a6
    CSAHi FoldColumn term=NONE cterm=NONE ctermbg=bg ctermfg=38 gui=italic guibg=bg guifg=#9ca9b7
    CSAHi DiffAdd term=bold cterm=NONE ctermbg=37 ctermfg=79 gui=NONE guibg=#8f9d6a guifg=#ffffff
    CSAHi DiffChange term=bold cterm=NONE ctermbg=53 ctermfg=16 gui=NONE guibg=#cda869 guifg=#000000
    CSAHi DiffDelete term=bold cterm=bold ctermbg=52 ctermfg=79 gui=bold guibg=#cf5c39 guifg=#ffffff
    CSAHi DiffText term=reverse cterm=bold ctermbg=85 ctermfg=16 gui=bold guibg=#b6b6b6 guifg=#000000
    CSAHi SignColumn term=NONE cterm=NONE ctermbg=85 ctermfg=31 gui=NONE guibg=#bebebe guifg=#00ffff
    CSAHi Conceal term=NONE cterm=NONE ctermbg=84 ctermfg=86 gui=NONE guibg=#a9a9a9 guifg=#d3d3d3
    CSAHi SpellBad term=reverse cterm=undercurl ctermbg=bg ctermfg=fg gui=undercurl guibg=bg guifg=fg guisp=#ff0000
    CSAHi SpellCap term=reverse cterm=undercurl ctermbg=bg ctermfg=fg gui=undercurl guibg=bg guifg=fg guisp=#0000ff
    CSAHi SpellRare term=reverse cterm=undercurl ctermbg=bg ctermfg=fg gui=undercurl guibg=bg guifg=fg guisp=#ff00ff
endif

if 1
    delcommand CSAHi
endif
