" Packer插件管理
lua require('plugins')
" 皮肤设置
set background=dark

colorscheme gruvbox
" 插件配置
lua require('plugin-config/nvim-tree')
" 快捷键配置
lua require('keybindings')

" 默认打开行号
set number
set cc=80 "标尺线
set hlsearch        " 搜索时，高亮显示匹配结果

" 默认打开nvim-tree
NvimTreeToggle
" 开启自动识别文件类型，并根据文件类型加载不同的插件和缩进规则
filetype plugin indent on
set clipboard=unnamed  " yy直接复制到系统剪切板（For macvim）

cmap w!! w !sudo tee >/dev/null %  " w!!写入只读文件

lua require('plugin-config/bufferline')

