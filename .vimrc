" Filetype plugin tells matchit about pairs and probably more.
" This didn't work until I moved it before Pathogen.
filetype on
filetype indent on
filetype plugin on

" Start pathogen for managing plugins, etc.
call pathogen#infect()

" New vim
set nocompatible

" Allow hiding edited bufferes
set hidden

" Tabs and indenting
set bs=2
set tabstop=2
set shiftwidth=2
set expandtab
set smartindent

" Don't automatically insert linebreaks in long lines
set wrap linebreak textwidth=0

" When reloading with :checkt[ime], only get confirmation if there are unsaved changes
set autoread

" Don't automatically show long lines wrapped
set nowrap

" Show line numbers
set number
set hlsearch

" Show $ at end of thing being changed
set cpoptions+=$

" Show status line even if single window
set laststatus=2

" Syntax highlighting
syntax enable

" Color scheme
set background=dark
colorscheme solarized

" Misc
set wildmode=longest,list,full
set wildmenu

" Mouse support
set mouse=a
set ttymouse=xterm2   " Allows mouse dragging

" Term settings
set term=xterm-256color
if $COLORTERM == 'gnome-terminal'
  set t_Co=256
endif

" System clipboard sharing
set clipboard=unnamedplus

" Leader and friends
map , \

" Ignore stuff I don't want to see
set wildignore+=*.pyc
set wildignore+=node_modules
set wildignore+=bower_components
set wildignore+=.tmp
set wildignore+=*.class
set wildignore+=target
set wildignore+=vendor

" *.md files are like *.markdown files
au BufRead,BufNewFile *.md set filetype=markdown

" These files are Ruby files
au BufRead,BufNewFile *.rake set filetype=ruby
au BufRead,BufNewFile *.thor set filetype=ruby

" Reselect visual area when changing indent in visual mode (from @notahat)
vnoremap < <gv
vnoremap > >gv

" enable matchit (e.g. for vim-ruby)
runtime macros/matchit.vim

" ctrlp.vim
set runtimepath^=~/.vim/bundle/ctrlp.vim
let g:ctrlp_follow_symlinks=1 " 1 - follow but ignore looped internal symlinks to avoid duplicates.
map <leader>t :CtrlP<cr>
map <leader>b :CtrlPBuffer<cr>
map <leader>r :CtrlPMRU<cr>

" NERDTree settings
let g:NERDTreeChDirMode=2     " cwd follows NERDTree root
let NERDTreeMapCWD=''         " because mapping to 'CD' adds delay to 'C' mapping
                              "   and CD functionality is redundant when ChDirMode=2
let NERDTreeMapOpenSplit='s'  " to match vim's C-w s
let NERDTreeMapOpenVSplit='v' " to match vim's C-w v

" Keyboard mappings
map <Leader>n :NERDTree<CR>R
map <Leader>N :NERDTreeFind<CR>R

