-- Nvim basic configuration for Lua
require('plugins')  -- Set Plugins
require('keymap')   -- Set KeyMap

--require('plugin-config/dashboard') -- dashboard Config
require('plugin-config/nvim-tree') -- nvim-tree Config
require('plugin-config/bufferline') -- nufferline Config
require('plugin-config/nvim-treesitter') -- nvim-treesitter Config
require("plugin-config/lualine") -- lualine Config
--require("plugin-config/which-key") -- which-key Cconfig
--require("plugin-config/lspsaga") -- lspsaga Config 
--require("plugin-config/symbols-outline")

require('lsp')
--require('lsp/lua')
--require('lsp/cmp')
--require('lsp/c-cpp')
--require('lsp/golang')

-- Set NeoVim Colors Theme
vim.cmd[[colorscheme tokyonight]]

-- uft8
vim.g.encoding = 'UTF-8'
vim.o.fileencoding = 'utf-8'

-- jk移动时光标下上方保留8行
vim.o.scrolloff = 8
vim.o.sidescrolloff = 8

-- 缩进2个空格等于一个Tab
vim.o.tabstop = 2
vim.bo.tabstop = 2
vim.o.softtabstop = 2
vim.o.shiftround = true

-- >> << 时移动长度
vim.o.shiftwidth = 2
vim.bo.shiftwidth = 2

-- 相对行号
vim.wo.number = true
vim.wo.relativenumber = true

-- 高亮所在行
vim.wo.cursorline = true
-- 显示左侧图标指示列
vim.wo.signcolumn = "yes"

-- 新行对齐当前行，空格替代tab
vim.o.expandtab = true
vim.bo.expandtab = true
vim.o.autoindent = true
vim.bo.autoindent = true
vim.o.smartindent = true

-- 搜索大小写不敏感，除非包含大写
vim.o.ignorecase = true
vim.o.smartcase = true

-- 搜索高亮
vim.o.hlsearch = true
-- 边输入边搜索
vim.o.incsearch = true

-- 使用增强状态栏后不再需要 vim 的模式提示
vim.o.showmode = false
-- 命令行高为2，提供足够的显示空间
-- vim.o.cmdheight = 2

-- 当文件被外部程序修改时，自动加载
vim.o.autoread = true
vim.bo.autoread = true

-- 禁止折行
vim.o.wrap = false
vim.wo.wrap = false

-- 鼠标支持
vim.o.mouse = "a"

-- 禁止创建备份文件
vim.o.backup = false
vim.o.writebackup = false
vim.o.swapfile = false

-- split window 从下边和右边出现
vim.o.splitbelow = true
vim.o.splitright = true

-- 不可见字符的显示，这里只把空格显示为一个点
vim.o.list = true
vim.o.listchars = "space:·"

-- 自动补全不自动选中
vim.g.completeopt = "menu,menuone,noselect,noinsert"
-- 补全增强
vim.o.wildmenu = true

-- always show tabline
vim.o.showtabline = 2

-- Dont' pass messages to |ins-completin menu|
vim.o.shortmess = vim.o.shortmess .. 'c'
vim.o.pumheight = 10

