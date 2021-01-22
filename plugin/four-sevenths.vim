command! FourSevenths call four_sevenths#Resize()

autocmd WinEnter,BufEnter,BufWinEnter,BufWritePost * FourSevenths
