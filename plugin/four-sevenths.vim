scriptencoding utf-8

if exists('g:loaded_four_sevenths')
    finish
endif
let g:loaded_four_sevenths = 1

command! FourSevenths call four_sevenths#Resize()

autocmd WinEnter,BufEnter,BufWinEnter,BufWritePost * FourSevenths
