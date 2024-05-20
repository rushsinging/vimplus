call plug#begin('~/.vim/plugged')
Plug 'scrooloose/nerdtree'
Plug 'vim-airline/vim-airline'
Plug 'tpope/vim-fugitive'
Plug 'lifepillar/vim-solarized8'
Plug 'dense-analysis/ale'
"Plug 'kien/ctrlp.vim'
"Plug 'mileszs/ack.vim'
Plug 'luochen1990/rainbow'
Plug 'vim-scripts/YankRing.vim'
Plug 'tpope/vim-surround'
Plug 'jiangmiao/auto-pairs'
Plug 'pangloss/vim-javascript'
Plug 'mustache/vim-mustache-handlebars'
Plug 'vim-scripts/nginx.vim'
Plug 'thanethomson/vim-jenkinsfile'
Plug 'posva/vim-vue'
Plug 'mhinz/vim-startify'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'preservim/nerdcommenter'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'antoinemadec/coc-fzf'
Plug 'dhruvasagar/vim-table-mode'
Plug 'iamcco/mathjax-support-for-mkdp'
Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app && npx --yes yarn install' }

Plug 'fatih/vim-go'
Plug 'moll/vim-node'
Plug 'hynek/vim-python-pep8-indent'
call plug#end()
