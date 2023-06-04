set sessionoptions=buffers,curdir,folds,help,tabpages,winsize
:DisableWhitespace
 let g:startify_custom_header =
       \ startify#pad(split(system('figlet -f larry3d neovim'), '\n'))
