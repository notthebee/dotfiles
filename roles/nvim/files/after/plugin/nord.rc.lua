vim.cmd[[
set termguicolors
colorscheme nord
]]
-- Example config in lua
vim.api.nvim_command("hi BufferCurrent       guibg=#434c5e guifg=#eceff4 gui=bold")
vim.api.nvim_command("hi BufferCurrentMod    guibg=#434c5e guifg=#ebcb8b gui=bold" )
vim.api.nvim_command("hi BufferCurrentSign   guibg=#4c566a guifg=#4c566a")
vim.api.nvim_command("hi BufferCurrentTarget guibg=#434c5e")
vim.api.nvim_command("hi BufferInactive      guibg=none guifg=#4c566a")
vim.api.nvim_command("hi BufferInactiveSign  guibg=none guifg=#4c566a")
vim.api.nvim_command("hi BufferInactiveMod   guibg=none guifg=#ebcb8b")
vim.api.nvim_command("hi BufferTabpageFill   guibg=none guifg=#4c566a")
-- Load the colorscheme
require('lualine').setup {
  options = {
    theme = 'nord'
  }
}
