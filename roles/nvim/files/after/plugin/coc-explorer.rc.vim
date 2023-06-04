:nnoremap sf <cmd>CocCommand explorer<cr>
autocmd BufEnter * if (winnr("$") == 1 && &filetype == 'coc-explorer') | q | endif
" CoC Explorer Settings
