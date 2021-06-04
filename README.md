# vimplus

这个`Vim`配置是2012开始，是基于[amix](https://github.com/amix/vimrc)的配置，开始只是改改键位，后来增加了插件管理并对插件有了增改，最近切换到了`zsh`,把代码补全切换到了`coc`，才感觉跟amix老哥渐行渐远了，所以想写一下自己的文档。@2021年06月04日

# 依赖


## 安装

    git clone https://github.com/rushsinging/vimplus.git ~/.vim
    cd ~/.vim
    ./vimplus.sh
    

## 插件

## 按键绑定

## Tips

### 替换多个文本

`cgn`可以快速替换一些文本，方法：

* 进入`v`模式，选中想要替换的文本
* 输入`cgn`，发现文本被清除
* 输入替换的文本，按`Esc`按键
* 使用`.`来重复操作，`n`跳过
