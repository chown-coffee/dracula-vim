" Palette: {{{

let g:dracula#palette           = {}
let g:dracula#palette.fg        = ['#BDA3ED', 253]

let g:dracula#palette.bglighter = ['#424450', 238]
let g:dracula#palette.bglight   = ['#343746', 237]
" let g:dracula#palette.bg        = ['#282A36', 236]
let g:dracula#palette.bg        = ['#21222C', 236]
let g:dracula#palette.bgdark    = ['#21222C', 235]
let g:dracula#palette.bgdarker  = ['#191A21', 234]

let g:dracula#palette.comment   = ['#623288',  61]
" let g:dracula#palette.comment   = ['#729CB3',  61]
let g:dracula#palette.selection = ['#44475A', 239]
let g:dracula#palette.subtle    = ['#424450', 238]

let g:dracula#palette.cyan      = ['#8BE9FD', 117]
let g:dracula#palette.green     = ['#50FA7B',  84]
let g:dracula#palette.orange    = ['#FFB86C', 215]
let g:dracula#palette.pink      = ['#FF79C6', 212]
let g:dracula#palette.purple    = ['#BD93F9', 141]
let g:dracula#palette.red       = ['#FF5555', 203]
let g:dracula#palette.yellow    = ['#F1FA8C', 228]

let g:dracula#palette.cyan      = ['#757DFF', 117]
let g:dracula#palette.green     = ['#AA66FF',  84]
let g:dracula#palette.orange    = ['#B9BDCF', 215]
" let g:dracula#palette.pink      = ['#562F93', 212]
let g:dracula#palette.pink      = ['#274595', 212]
let g:dracula#palette.purple    = ['#AC5DFD', 141]
let g:dracula#palette.red       = ['#624480', 203]
let g:dracula#palette.yellow    = ['#6272A4', 228]

"
" ANSI
"
let g:dracula#palette.color_0  = '#08050B'
let g:dracula#palette.color_1  = '#875A66'
let g:dracula#palette.color_2  = '#562F93'
let g:dracula#palette.color_3  = '#274595'
let g:dracula#palette.color_4  = '#757DFF'
let g:dracula#palette.color_5  = '#9567AF'
let g:dracula#palette.color_6  = '#AC5DFD'
let g:dracula#palette.color_7  = '#F8F8F2'
let g:dracula#palette.color_8  = '#6272A4'
let g:dracula#palette.color_9  = '#472d5f'
let g:dracula#palette.color_10 = '#562F93'
let g:dracula#palette.color_11 = '#274595'
let g:dracula#palette.color_12 = '#D6ACFF'
let g:dracula#palette.color_13 = '#FF92DF'
let g:dracula#palette.color_14 = '#A4FFFF'
let g:dracula#palette.color_15 = '#FFFFFF'

" }}}

" Helper function that takes a variadic list of filetypes as args and returns
" whether or not the execution of the ftplugin should be aborted.
func! dracula#should_abort(...)
    if ! exists('g:colors_name') || g:colors_name !=# 'dracula'
        return 1
    elseif a:0 > 0 && (! exists('b:current_syntax') || index(a:000, b:current_syntax) == -1)
        return 1
    endif
    return 0
endfunction

" vim: fdm=marker ts=2 sts=2 sw=2 fdl=0:
