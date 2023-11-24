require("hlchunk").setup({
	indent = {
		chars = { "│", "¦", "┆", "┊" }, -- 更多的字符可以在 https://unicodeplus.com/ 这个网站上找到

		style = {
			"#0e3c35",
		},
	},
	chunk = {
		chars = {
			horizontal_line = "─",
			vertical_line = "│",
			left_top = "┌",
			left_bottom = "└",
			right_arrow = "─",
		},
		style = "#00ffff",
	},
	blank = {
		enable = false,
	},
})
