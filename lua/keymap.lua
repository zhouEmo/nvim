vim.g.mapleader = " " -- Leader
vim.g.maplocalleader = " "

-- 本地变量
local map = vim.api.nvim_set_keymap
local opt = {noremap = true, silent = true }


map("n", "<C-u>", "9k", opt) -- ctrl + u 向上翻页
map("n", "<C-d>", "9j", opt) -- ctrl + u 向下翻页

map('n', '<Leader>w', ':write<CR>', opt) -- leader + w  write
map('n', '<Leader>t', ':ToggleTerm<CR>', opt)  -- leader + t Open ToggleTerm

-- visual 模式下可以连续 > 缩进代码
map('v', '<', '<gv', opt) -- <
map('v', '>', '>gv', opt) -- >

-- 分屏相关
-- 习惯把所有分屏相关的操作都放在 s + 某个按键 ，s 表示 split
-- alt + hjkl 在窗口之间跳转
map("n", "sv", ":vsp<CR>", opt)  -- sv 水平分屏
map("n", "sh", ":sp<CR>", opt)   -- sh 垂直分屏
map("n", "sc", "<C-w>c", opt)    -- sc 关闭当前分屏 (c = close)
map("n", "so", "<C-w>o", opt)    -- so 关闭其他分屏 (p = other)

-- s> s< s= sj sk 分屏比例控制(支持鼠标拖拽)
map("n", "s>", ":vertical resize +20<CR>", opt)
map("n", "s<", ":vertical resize -20<CR>", opt)
map("n", "s=", "<C-w>=", opt)
map("n", "sj", ":resize +10<CR>",opt)
map("n", "sk", ":resize -10<CR>",opt)

-- alt + hjkl 在窗口之间跳转
map("n", "<A-h>", "<C-w>h", opt) -- alt + h
map("n", "<A-j>", "<C-w>j", opt) -- alt + j
map("n", "<A-k>", "<C-w>k", opt) -- alt + k
map("n", "<A-l>", "<C-w>l", opt) -- alt + l

-- 插件相关快捷键 --

-- Telescope
map("n", "<C-p>", ":Telescope find_files<CR>", opt)
map("n", "<leader>f", ":Telescope find_files<CR>", opt)
map("n", "<leader>g", ":Telescope live_grep<CR>", opt) -- 实时Grep

-- bufferline 左右切换
map("n", "<C-h>", ":BufferLineCyclePrev<CR>", opt)
map("n", "<C-l>", ":BufferLineCycleNext<CR>", opt)

-- nvimTree
-- o 打开关闭文件夹
-- a 创建文件
-- r 重命名
-- x 剪切
-- c 拷贝
-- p 粘贴
-- d 删除
map('n', '<C-n>', ':NvimTreeToggle<CR>', opt) -- ctrl + n Open/Close nvimTree

-- nvim-treesitter 代码格式化
-- zc zo 折叠 {} 里的内容
map("n", "<leader>i", "gg=G", opt)

-- 显示符号表 
vim.api.nvim_set_keymap("n", "<leader>so", "<cmd>SymbolsOutline<CR>", {silent = true, noremap = true})


