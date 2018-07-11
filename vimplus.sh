#!/bin/bash

echo 'source ~/.vim/vimrcs/basic.vim
source ~/.vim/vimrcs/filetypes.vim
source ~/.vim/vimrcs/plugins.vim
source ~/.vim/vimrcs/extended.vim
source ~/.vim/vimrcs/plugins_config.vim

try
source ~/.vim/me.vim
catch
endtry' > ~/.vimrc

vim +PlugClean! +PlugUpdate +qal

mkdir -p ~/.vim/temp_dirs/undodir

git clone https://github.com/seebi/dircolors-solarized.git ~/.vim/tools/dircolors-solarized
dircolors ./tools/dircolors-solarized/dircolors.ansi-dark  > ~/.vim/.dircolors

echo 'You may add "source ~/.vim/.dircolors" to your bashrc'
