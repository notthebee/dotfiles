if has("nvim")
  let g:plug_home = stdpath('data') . '/plugged'
endif


let data_dir = has('nvim') ? stdpath('data') . '/site' : '~/.vim'
if empty(glob(data_dir . '/autoload/plug.vim'))
  silent execute '!curl -fLo '.data_dir.'/autoload/plug.vim --create-dirs  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

" Run PlugInstall if there are missing plugins
autocmd VimEnter * if len(filter(values(g:plugs), '!isdirectory(v:val.dir)'))
  \| PlugInstall --sync | source $MYVIMRC
\| endif



call plug#begin()

" Git and Github functionality
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-rhubarb'

if has("nvim")
  Plug 'neoclide/coc.nvim', {'branch': 'master', 'do': 'yarn install --frozen-lockfile'}
  Plug 'yaegassy/coc-ansible', {'do': 'yarn install --frozen-lockfile'}
  Plug 'mlaursen/coc-scssmodules', {'do': 'yarn install && yarn build'}

  " Status bar
  Plug 'hoob3rt/lualine.nvim'

  Plug 'kyazdani42/nvim-web-devicons'

  Plug 'nvim-lua/popup.nvim'
  Plug 'nvim-lua/plenary.nvim'

  " Fast search and fzf
  Plug 'nvim-telescope/telescope.nvim'

  " Indentation guides
  Plug 'lukas-reineke/indent-blankline.nvim'

  " Tabs
  Plug 'romgrk/barbar.nvim'


endif

Plug 'mhinz/vim-startify'
Plug 'rhysd/conflict-marker.vim'

Plug 'ntpeters/vim-better-whitespace'

" Git diffs
Plug 'airblade/vim-gitgutter'

Plug 'tpope/vim-surround'
Plug 'tpope/vim-abolish'
Plug 'arcticicestudio/nord-vim'
Plug 'pearofducks/ansible-vim'

call plug#end()
