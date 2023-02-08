# Nvim for lua

> 跟着下面的安装步骤，进行安装...

## 1.Install
```
sudo pacman -S node unzip git
```

## 2.安装Packer.nvim插件管理器
```
git clone --depth 1 https://github.com/wbthomason/packer.nvim\
 ~/.local/share/nvim/site/pack/packer/start/packer.nvim
```

## 下载配置文件
```
mv -r ~/.config/nvim ~/.config/nvim.bak
cd ~/.config
git clone --depth 1 git@github.com:zhouEmo/nvim.git nvim

# 安装插件
:PackerInstall  
```
## 自定义快捷键
> 可从nvim/lua/keymap.lua 文件中查看相关
```
ctrl + u 向上翻页
ctrl + u 向下翻页
leader + w  write
leader + t Open ToggleTerm
> 缩进代码
< 缩进代码
sv 水平分屏
sh 垂直分屏
sc 关闭当前分屏 (c = close)
so 关闭其他分屏 (p = other)
s> s< s= sj sk 分屏比例控制(支持鼠标拖拽)
alt + hjkl 在窗口之间跳转
Ctrl + p 搜索文件
leader + f 搜索文件
leader + g 搜索实时grep
bufferline 左右切换 Ctrl + h/l
ctrl + n Open/Close nvimTree
zc zo 折叠 {} 里的内容
leader + i nvim-treesitter 代码格式化
leader + s + o  显示符号表
```