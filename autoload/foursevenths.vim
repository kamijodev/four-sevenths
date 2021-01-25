scriptencoding utf-8

if exists('g:loaded_four_sevenths')
    finish
endif

let g:loaded_four_sevenths = 1

let s:save_cpo = &cpo
set cpo&vim

function! foursevenths#Resize()
  let l:window_num = len(tabpagebuflist())
  let l:width = 0

  for i in range(l:window_num)
    let l:width = l:width + winwidth(i + 1)
  endfor

  let l:width = l:width / 7 * 4
  exec 'vertical res' . l:width
endfunction

let &cpo = s:save_cpo
unlet s:save_cpo
