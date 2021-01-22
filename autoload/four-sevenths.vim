function! four_sevenths#Resize()
  let l:window_num = len(tabpagebuflist())
  let l:width = 0

  for i in range(l:window_num)
    let l:width = l:width + winwidth(i + 1)
  endfor

  let l:width = l:width / 7 * 4
  exec 'vertical res' . l:width
endfunction

