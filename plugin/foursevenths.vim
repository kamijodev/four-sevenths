scriptencoding utf-8

let s:save_cpo = &cpo
set cpo&vim

command! FourSevenths call foursevenths#resize()

autocmd WinEnter,BufEnter,BufWinEnter,BufWritePost * FourSevenths

let &cpo = s:save_cpo
unlet s:save_cpo
