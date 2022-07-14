-- 基础设置
require('basic')
-- Packer插件管理
require('plugins')
-- 主题设置 （新增）
require("colorscheme")
-- 底部提示
require("plugin-config.lualine")
require("plugin-config.telescope")
require("plugin-config.dashboard")
require("plugin-config.project")
require("plugin-config.nvim-treesitter")
-- 内置LSP 
require("lsp.setup")
require("lsp.cmp")
require("lsp.ui")
require("plugin-config.indent-blankline")

-- 皮肤设置
-- set background=dark

-- colorscheme gruvbox
-- 插件配置
require('plugin-config/nvim-tree')
-- 快捷键配置
require('keybindings')

-- 默认打开行号
-- set number
-- set cc=80 "标尺线
-- set hlsearch        " 搜索时，高亮显示匹配结果

-- 默认打开nvim-tree
-- NvimTreeToggle
-- 开启自动识别文件类型，并根据文件类型加载不同的插件和缩进规则
-- filetype plugin indent on
-- yy直接复制到系统剪切板（For macvim）
-- set clipboard=unnamed 

require('plugin-config/bufferline')

