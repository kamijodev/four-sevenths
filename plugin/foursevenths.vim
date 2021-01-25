scriptencoding utf-8

if exists('g:loaded_four_sevenths')
    finish
endif

let g:loaded_four_sevenths = 1

let s:save_cpo = &cpo
set cpo&vim

command! FourSevenths call foursevenths#Resize()

autocmd WinEnter,BufEnter,BufWinEnter,BufWritePost * :FourSevenths<CR>

let &cpo = s:save_cpo
unlet s:save_cpo
