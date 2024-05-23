# vimplus

@2021年06月04日, 这个`Vim`配置是2012开始，是基于[amix](https://github.com/amix/vimrc)的配置，开始只是改改键位，后来增加了插件管理并对插件有了增改，最近切换到了`zsh`,把代码补全切换到了`coc`，才感觉跟amix老哥渐行渐远了，所以想写一下自己的文档。

@2023年05,感觉只有换了新工作后才会有时间来更新这个库。现在这个库已经越来越定制化了，更类似一个mac 环境初始化工具了，所以我修改了`vimplus.sh`，让它符合这个预期。
1. 同时本次会整理和梳理配置中涉及到的插件和按键绑定
1. 清理失效和不常用的内容。
1. 将主题从`solarized`修改为`material`

## 安装

    git clone https://github.com/rushsinging/vimplus.git ~/.vim
    cd ~/.vim
    ./vimplus.sh
    
## 插件

| 插件名                                                             | 作用                                  | 评价                                             |
|--------------------------------------------------------------------|---------------------------------------|--------------------------------------------------|
| [nerdtree](scrooloose/nerdtree)                                    | 常用的文件浏览器插件                  | 其实我不怎么用                                   |
| [vim-airline](vim-airline/vim-airline)                             | 强大的状态栏插件, `powerline`的替代   |                                                  |
| [tpope/vim-fugitive](tpope/vim-fugitive)                           | git 插件                              |                                                  |
| [lifepillar/vim-solarized8](lifepillar/vim-solarized8)             | solarized 皮肤插件                    |                                                  |
| [dense-aanlysis/ale](dense-aanlysis/ale)                           | 语法检查                              |                                                  |
| [luochen1990/rainbow](luochen1990/rainbow)                         | 用于区分代码层次                      |                                                  |
| [vim-scripts/YankRing.vim](vim-scripts/YankRing.vim)               | 代码修改历史记录器                    |                                                  |
| [tpope/vim-surround](tpope/vim-surround)                           | 快捷的给代码增加[]/()/{}/""/'' 的环绕 | 快捷键比较复杂，不怎么常用，记住`vmode`的`S`就好 |
| [jiangmiao/auto-pairs](jiangmiao/auto-pairs)                       | 自动关闭[] () {} 等                   | 比上一个常用多了                                 |
| [vim-scripts/nginx.vim](vim-scripts/nginx.vim)                     | nginx.conf 配置文件语法高亮           |                                                  |
| [thanethomson/vim-jenkinsfile](thanethomson/vim-jenkinsfile)       | jenkinsfile 语法高亮                  |                                                  |
| [posva/vim-vue](posva/vim-vue)                                     | vue 语法高亮                          |
| [mhinz/vim-startify](mhinz/vim-startify)                           | 提供一个开始界面                      |                                                  |
| [neoclide/coc.nvim](neoclide/coc.nvim)                             | 新一代自动补全神器                    | 伟大，无需多言                                   |
| [preservim/nerdcommenter](preservim/nerdcommenter)                 | 注释插件，帮你给代码块增加/删除注释   |                                                  |
| [Xuyuanp/nerdtree-git-plugin](Xuyuanp/nerdtree-git-plugin)         | 为nerdtree 增加git 状态的插件         |                                                  |
| [junegunn/fzf](junegunn/fzf)                                       | 文件搜索，buffer 管理                 |                                                  |
| [junegunn/fzf.vim](junegunn/fzf.vim)                               | 同上                                  |                                                  |
| [antoinemadec/coc-fzf](antoinemadec/coc-fzf)                       | 使用fzf 的窗口替换coc 的结果窗口      |                                                  |
| [dhruvasagar/vim-table-mode](dhruvasagar/vim-table-mode)           | markdown 快捷表格制作                 |                                                  |
| [hynek/vim-python-pep8-indent](hynek/vim-python-pep8-indent)       | 使python 的缩进自动符合pep8 标准      | 好用                                             |
| [iamcco/markdown-preview.nvim](iamcco/markdown-preview.nvim)       | 为markdown 文件提供预览功能           |                                                  |
| [iamcco/mathjax-support-for-mkdp](iamcco/mathjax-support-for-mkdp) | markdonw 只能怪支持mathjax            |                                                  |


## 设置 && 按键绑定

### 设置

浏览[basic.vim](./vimrcs/basic.vim) 以浏览所有设置

### 按键绑定

| mode | quickkey               | keys                                    | use                                                 | 相关plugins      |
|------|------------------------|-----------------------------------------|-----------------------------------------------------|------------------|
| n    | <leader>w              | :w!                                     | 快速强制保存                                        |                  |
| n    |                        | W                                       | 以`sudo`方式强制保存                                |                  |
| n    | <leader>q              | :q!                                     | 快速强制退出                                        |
| n    | <leader>rr             | :so $MYVIMRC                            | 重载vim 配置                                        |                  |
| n    | <leader>e              | vsplit <c-r>=expand("%:p:h")<cr>/       | 右侧打开一个split 窗口                              |
| n    | <leader>E              | split <c-r>=expand("%:p:h")<cr>/        | 下侧打开一个split 窗口                              |
| n    | j                      | gj                                      | 在单行很长的时候，`j`会将单行超出的部分视为新的一行 |
| n    | k                      | gk                                      | 同上                                                |
| n    | <C-j>j                 | <C-W>j                                  | 在split 窗口之间移动，类似hjkl                      |
| n    | <C-j>k                 | <C-W>k                                  | 在split 窗口之间移动，类似hjkl                      |
| n    | <C-j>h                 | <C-W>h                                  | 在split 窗口之间移动，类似hjkl                      |
| n    | <C-j>l                 | <C-W>l                                  | 在split 窗口之间移动，类似hjkl                      |
| n    | <leader>bd             | :Bclose                                 | 关闭当前buffer                                      |
| n    | <leader>ba             | :1,1000 bd!                             | 关闭所有buffer                                      |
| n    | <leader>te             | :tabedit <c-r>=expand("%:p:h")<cr>/     | 打开一个新的tab                                     |
| n    | <leader>cd             | :cd %:p:h<cr>:pwd<cr>                   | 将文件目录设置为当前目录                            |
| n    | 0                      | ^                                       | 快速来到行首,可能^需要两只手按                      |
| n    | <leader>g              | :Rg                                     | 打开Rg 搜索(需要fzf 和ripgrep 支持)                 | fzf ripgrep      |
| n    | <C-f>                  | :Rg<CR>                                 | 快速打开Rg                                          | fzf ripgrep      |
| v    | <leader><space>        | "hy:Rg <C-r>h<CR>                       | 快速搜索选中的文本                                  | fzf ripgrep      |
| n    | <leader>ss             | :setlocal spell!<CR>                    | 打开语法(英语)检查                                  |
| n    | <leader>M              | mmHmt:%s/<C-V><cr>//ge<cr>'tzt'm        | 去除windows 的^M(很有用！)                          |
| n    | <leader>pp             | :setlocal paste!<CR>                    | 进入粘贴模式，ctr-c/v 的时候格式乱了的时候用        |
| c    | $h                     | e ~/                                    | 快速输入                                            |
| c    | $d                     | e ~/Desktop/                            | 快速输入                                            |
| c    | $j                     | e ./                                    | 快速输入                                            |
| c    | $c                     | e <C-\>eCurrentFileDir("e")<cr>         | 快速输入                                            |
| c    | $q                     | <C-\>eDeleteTillSlash()<cr>             | 删除输入                                            |
| c    | <C-A>                  | <Home>                                  | 类似命令行                                          |
| c    | <C-E>                  | <End>                                   | 类似命令行                                          |
| c    | <C-K>                  | <C-U>                                   | 类似命令行                                          |
| c    | <C-P>                  | <Up>                                    | 类似命令行                                          |
| c    | <C-N>                  | <Down>                                  | 类似命令行                                          |
| all  | ½                      | $                                       |                                                     |
| v    | $1, $2, $3, $$, $q, $e | (), [], {}, "", '', ``                  | select 模式下,快速包围选中文本                      |
| i    | xdate                  | <c-r>=strftime("%d/%m/%y %H:%M:%S")<cr> | 快速输入当前时间                                    |
| n    | <leader>m              | :Buffers                                | 打开buffer 窗口                                     | fzf.vim          |
| n    | <leader>nn             | :NERDTreeToggle                         | NERDTree 开关                                       |
| n    | <F5>                   | :!python %<cr>                          | Python: 执行当前文件                                |
| n    | F                      | :set foldmethod=indent<cr>              | Python:                                             |
| i    | $r                     | return                                  | Python:  快捷输入return                             |
| i    | $i                     | import                                  | Python:  快捷输入                                   |
| i    | $p                     | print                                   | Python:  快捷输入                                   |
| i    | <TAB>                  | coc 相关                                | COC: 选择下一个匹配                                 | coc              |
| i    | <S-TAB>                | coc 相关                                | COC: 选择上一个匹配                                 | coc              |
| i    | <c-@>                  | coc#refresh                             | COC: 刷新                                           | coc              |
| i    | <c-space>              | coc 相关                                | COC(nvim)                                           | coc              |
| n    | <leader>tm             |                                         | 打开表格创作模式                                    | vim-table-mode   |
| n    | <F8>                   |                                         | 打开Markdown 预览                                   | markdonw-preview |
| n    | <F9>                   |                                         | 停止Markdown 预览                                   | markdonw-preview |
| n    | <leader>ci             |                                         | 增加/取消注释                                       | nerdcommenter    |
| n    | <leader>cc             |                                         | 增加注释                                            | nerdcommenter    |

## 推荐的COC 插件

[coc](https://github.com/neoclide/coc.nvim)一个特别快的代码补全工具，在我这里已经替代了[ycm](https://github.com/ycm-core/YouCompleteMe)。

由于它有一套自己的插件系统，不方便用命令行安装，所以这里会列举一些常用插件

| 插件            | 作用     |
|-----------------|----------|
| coc-marketplace | 插件市场 |
| ...             |          |

## Tips

### 替换多个文本

`cgn`可以快速替换一些文本，方法：

* 按`空格`后输入需要替换的文本
* 输入`cgn`，发现第一个文本被清除
* 输入替换的文本，按`Esc`按键
* 使用`.`来重复操作，`n`跳过
