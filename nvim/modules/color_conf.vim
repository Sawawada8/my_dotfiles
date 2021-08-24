
" active pane clear
augroup ChangeBackground
  autocmd!
  " autocmd WinEnter * highlight Normal guibg=default
  " autocmd WinEnter * highlight NormalNC guibg='#2D2B55'
  autocmd BufRead * highlight Normal guibg=default
  " autocmd WinEnter * highlight NormalNC guibg='#27292d' #2D2B55 
augroup END
