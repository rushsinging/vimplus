#!/bin/bash

set -ex

# Install Homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

brew install coreutils node virtualenvwrapper telnet ripgrep zsh-autosuggestions jq zplug

brew tap homebrew/cask-fonts
brew install --cask font-fira-code

echo 'source ~/.vim/vimrcs/basic.vim
source ~/.vim/vimrcs/plugins.vim
source ~/.vim/vimrcs/filetypes.vim
source ~/.vim/vimrcs/extended.vim
source ~/.vim/vimrcs/plugins_config.vim

try
source ~/.vim/me.vim
catch
endtry' > ~/.vimrc

vim +PlugClean! +PlugUpdate +qal 
# vim -c 'CocInstall coc-go coc-pyright coc-marketplace'

mkdir -p ~/.vim/temp_dirs/undodir

#if [ ! -f ~/.vim/.dircolors ]; then
    #git clone https://github.com/seebi/dircolors-solarized.git ~/.vim/tools/dircolors-solarized
    #dircolors ./tools/dircolors-solarized/dircolors.ansi-dark  > ~/.vim/.dircolors
#fi

ln -sf ~/.vim/terminal/bashrc ~/.bashrc
ln -sf ~/.vim/terminal/zshrc ~/.zshrc
ln -sf ~/.vim/terminal/p10k.zsh ~/.p10k.zsh

git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ~/.powerlevel10k

echo
echo "Please restart your terminal"
