if !exists('g:loaded_telescope') | finish | endif



function CheckForExplorer()
  if CocAction('runCommand', 'explorer.getNodeInfo', 'closest') isnot# v:null
    CocCommand explorer --toggle
  endif
endfunction

nnoremap <silent> ;f :call CheckForExplorer()<CR> <cmd>lua require('telescope.builtin').find_files()<cr>
nnoremap  <silent> ;r :call CheckForExplorer()<CR> <cmd>lua require('telescope.builtin').live_grep()<cr>
nnoremap  <silent> ;b :call CheckForExplorer()<CR> <cmd>lua require('telescope.builtin').file_browser()<cr>
nnoremap  <silent> \\ :call CheckForExplorer()<CR> <cmd>Telescope buffers<cr>
nnoremap  <silent> ;; :call CheckForExplorer()<CR> <cmd>Telescope help_tags<cr>

lua << EOF
function telescope_buffer_dir()
  return vim.fn.expand('%:p:h')
end

local telescope = require('telescope')
local actions = require('telescope.actions')

telescope.setup{
  defaults = {
    mappings = {
      n = {
        ["q"] = actions.close
      },
    },
  }
}
EOF
