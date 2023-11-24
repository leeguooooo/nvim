vim.o.background = "dark"
vim.g.tokyonight_style = "storm" -- day / night
-- 半透
vim.g.tokyonight_transparent = true
-- 透明
-- vim.g.tokyonight_transparent_background = true
-- vim.g.tokyonight_transparent_sidebar = true
-- local colorscheme = "tokyonight"
local colorscheme = "vscode"
-- tokyonight
-- OceanicNext
-- gruvbox
-- zephyr
-- nord
-- onedark
-- nightfox
-- dracula
-- vscode
local status_ok, _ = pcall(vim.cmd, "colorscheme " .. colorscheme)
if not status_ok then
	vim.notify("colorscheme: " .. colorscheme .. " 没有找到！")
	return
end

-- vscode 透明
local c = require("vscode.colors")
require("vscode").setup({
	-- 允许背景透明
	transparent = true,
	-- 注释使用斜体
	italic_comments = true,
	-- 禁止使用 nvim-tree 背景色
	disable_nvimtree_bg = true,
	-- 重写部分元素配色
	color_overrides = {
		vscLineNumber = "#ffffff",
	},
})
