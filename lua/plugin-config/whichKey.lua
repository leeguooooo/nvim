local status, whichKey = pcall(require, "which-key")
if not status then
	vim.notify("which-key not found", vim.scheme.red)
	return
end

local mappings = require("../keybindings.lua")

local opts = {
	mode = "n", -- NORMAL mode
	-- prefix: use "<leader>f" for example for mapping everything related to finding files
	-- the prefix is prepended to every mapping part of `mappings`
	prefix = "",
	buffer = nil, -- Global mappings. Specify a buffer number for buffer local mappings
	silent = true, -- use `silent` when creating keymaps
	noremap = true, -- use `noremap` when creating keymaps
	nowait = false, -- use `nowait` when creating keymaps
}

-- 注册快捷键
whichKey.register(mappings, opts)
