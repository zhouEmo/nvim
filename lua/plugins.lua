require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  -- toggleterm nvim 浮动终端插件
  use {"akinsho/toggleterm.nvim", tag = '*', config = function()
    require("toggleterm").setup{

    }
  end
  }

  -- nvim-lsp-installer
  --  use("williamboman/nvim-lsp-installer")
  use { "williamboman/mason.nvim" }
  use({ "williamboman/mason-lspconfig.nvim" })


  -- Configurations for Nvim LSP
  use 'neovim/nvim-lspconfig'

  -- 补全引擎
  use("hrsh7th/nvim-cmp")
  -- Snippet 引擎
  use("hrsh7th/vim-vsnip")
  -- 补全源
  use("hrsh7th/cmp-vsnip")
  use("hrsh7th/cmp-nvim-lsp")
  use("hrsh7th/cmp-nvim-lsp-signature-help")
  use("hrsh7th/cmp-path")
  use("hrsh7th/cmp-buffer") -- 从buffer中智能提示
  use("hrsh7th/cmp-cmdline")
  use('hrsh7th/cmp-emoji')
  use('octaltree/cmp-look') -- 完成英语单词
  use('hrsh7th/cmp-calc') -- 输入数学算式 (如1+1=) 自动计算

  -- 常见编程语言代码段
  use("rafamadriz/friendly-snippets")
  -- lspkind 美化自动完成提示信息
  use('onsails/lspkind-nvim')

  -- 自动补全括号
  use {
    "windwp/nvim-autopairs",
    config = function() require("nvim-autopairs").setup {} end
  }
  -- 神级文件模糊搜索插件
  use({
    "nvim-telescope/telescope.nvim",
    requires = { "nvim-lua/plenary.nvim" },
  })
  -- telescope extensions
  use("LinArcX/telescope-env.nvim")
  use("nvim-telescope/telescope-ui-select.nvim")

  -- 文件目录树 
  use {
    'kyazdani42/nvim-tree.lua',
    requires = 'kyazdani42/nvim-web-devicons'
  }

  -- bufferline
  use {
    'akinsho/bufferline.nvim',
    requires = 'kyazdani42/nvim-web-devicons'
  }

  -- treesitter
  use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' }

  -- 状态栏
  use {
    'nvim-lualine/lualine.nvim',
    requires = { 'kyazdani42/nvim-web-devicons', opt = true }
  }

  -- 显示符号表
  use {'simrat39/symbols-outline.nvim'}

  -- 启动界面
  use {'glepnir/dashboard-nvim'}

  -- LSP UI 美化
  use{"glepnir/lspsaga.nvim"}

  ------colorschemes-------
  use 'folke/tokyonight.nvim'

  use {"folke/which-key.nvim"}

end)
