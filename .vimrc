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

" Reselect visual area when changing indent in visual mode (from @notahat)
vnoremap < <gv
vnoremap > >gv

