" largely adapted from
" http://dougblack.io/words/a-good-vimrc.html#ui

set nocompatible

" enable pathogen to modify runtime path
call pathogen#helptags()
call pathogen#incubate()

set hidden


"=========== Colors
  syntax on
  colorscheme mustang


"========== Whitespace
  set tabstop=2 " number of visual spaces per tab
  set shiftwidth=2 " auto indent size
  set softtabstop=2 " number of spaces in tab when editing
  set expandtab " pressing tab inserts spaces
  set shiftround " use shiftwidth multiples whne indenting with < and >
  set backspace=indent,eol,start " normal backspace behaviour
  set smartindent
  " toggle invisible characterv
  nnoremap <leader>i :set list!<CR>


"========= UI Config
  set number " line numbers
  set showmatch "matching brackets
  set showcmd " show command in bottom bar
  set cursorline " highlight current line
  set wildmenu " visual autocomplete for command menu
  set lazyredraw " redraw only when we need to, minor speedup
  set shortmess+=I "hide launch screen


"========= Searching
  set ignorecase " when searching
  set smartcase " ignore case if all lowercase, otherwise case sensitive
  set hlsearch " highlight search matches
  " turn off search highlight
  nnoremap <leader><space> :nohlsearch<CR>


"========== Folding Rules
  set foldenable
  " set foldcolumn=2 "add a fold column
  set foldmethod=indent
  set foldlevelstart=10 "start with everything folded
  " commands to trigger unfold
  set foldopen=block,hor,insert,jump,mark,percent,quickfix,search,tag,undo 
  nnoremap <space> za


"=========== Movement
  " move vertically by visual line (even if wrapped) 
  nnoremap j gj
  nnoremap k gk


"========== Leader shortcuts
  " change the mapleader to , 
  let mapleader=","
  let maplocalleader="\\"


"============ Global Settings
  set history=1000
  set undolevels=1000

  " no beeping or flashing
  set novisualbell
  set noerrorbells visualbell t_vb=
  autocmd GUIEnter * set visualbell t_vb=

  set wildignore=*.swp,*.bak
  set nobackup
  set noswapfile


"============ Plugins
nnoremap <F5> :GundoToggle<CR>
