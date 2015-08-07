# Vim configuration

## Installation

Clone this repository locally (don't forget submodules):

    cd ~/workspace
    git clone git@github.com:yourname/dot-vim.git
    cd dot-vim
    git submodule update

Set symbolic links to the vim config file and directory:

    cd ~
    ln -sf ~/workspace/dot-vim/.vimrc .vimrc
    ln -sf ~/workspace/dot-vim/.vim .vim
    ls -al .vim*

## Vim plugins

This config uses [pathogen.vim](https://github.com/tpope/vim-pathogen)
for management of Vim plugins.

To add a plugin, add it as a git submodule under the `.vim/bundle` directory.
For example:

    cd ~/workspace/dot-vim
    git submodule add git@github.com:vim-ruby/vim-ruby.git .vim/bundle/vim-ruby
    git status
    git add .
    git commit -m "Added vim-ruby plugin."

## Extra dependencies

* [ack](http://beyondgrep.com/)

## Learning Vim

* `vimtutor`
* [Vim quick reference card](http://tnerual.eriogerg.free.fr/vimqrc.pdf)
* [vim / vim graphical cheat sheet](http://www.glump.net/howto/desktop/vim-graphical-cheat-sheet-and-tutorial)

