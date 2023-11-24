local status, db = pcall(require, "dashboard")
if not status then
	vim.notify("没有找到 dashboard")
	return
end

local home = os.getenv("HOME")

db.setup({
	theme = "doom",
	config = {
		header = {
			[[]],
			[[]],
			[[]],
			[[]],
			[[]],
			[[]],
			[[]],
			[[]],
			[[]],
			[[]],
			[[]],
			[[]],
			[[]],
			[[]],
			[[]],
			[[]],
			[[]],
			[[]],
			[[]],
			[[]],
			[[]],
			[[]],
			[[██╗     ███████╗███████╗ ██████╗ ██╗   ██╗ ██████╗  ██████╗ ]],
			[[██║     ██╔════╝██╔════╝██╔════╝ ██║   ██║██╔═══██╗██╔═══██╗]],
			[[██║     █████╗  █████╗  ██║  ███╗██║   ██║██║   ██║██║   ██║]],
			[[██║     ██╔══╝  ██╔══╝  ██║   ██║██║   ██║██║   ██║██║   ██║]],
			[[███████╗███████╗███████╗╚██████╔╝╚██████╔╝╚██████╔╝╚██████╔╝]],
			[[╚══════╝╚══════╝╚══════╝ ╚═════╝  ╚═════╝  ╚═════╝  ╚═════╝ ]],
			[[]],
			[[]],
		}, --your header
		center = {

			{
				icon = "  ",
				desc = "Projects                            ",
				desc_hl = "String",
				action = "Telescope projects",
				icon_hl = "Title",
				key = "p",
				key_hl = "Number",
			},
			{
				icon = "  ",
				desc = "Recently files                      ",
				desc_hl = "String",
				action = "Telescope oldfiles",
				key = "r",
				key_hl = "Number",
			},
			{
				icon = "  ",
				desc = "Edit keybindings                    ",
				desc_hl = "String",
				action = "edit ~/.config/nvim/lua/keybindings.lua",
				key = "n",
				key_hl = "Number",
			},
			{
				icon = "  ",
				desc = "Edit Projects                       ",
				desc_hl = "String",
				action = "edit ~/.local/share/nvim/project_nvim/project_history",
				key = "e",
				key_hl = "Number",
			},
			-- {
			-- 	icon = "  ",
			-- 	desc = "Edit .zshrc                        ",
			-- 	action = "edit ~/.zshrc",
			-- },
			-- {
			-- 	icon = "  ",
			-- 	desc = "Update Plugins                     ",
			-- 	action = "PackerUpdate",
			-- },
			{
				icon = "  ",
				desc = "Find  File                         ",
				desc_hl = "String",
				action = "Telescope find_files find_command=rg,--hidden,--files",
				key = "f",
				key_hl = "Number",
			},

			-- {
			-- 	icon = "  ",
			-- 	desc = "Change colorscheme                  ",
			-- 	action = "ChangeColorScheme",
			-- },
			-- {
			--   icon = "  ",
			--   desc = "Edit init.lua                       ",
			--   action = "edit ~/.config/nvim/init.lua",
			-- },
			-- {
			-- 	icon = "  ",
			-- 	desc = "Find file                           ",
			-- 	action = "Telescope find_files",
			-- },
			-- {
			-- 	icon = "  ",
			-- 	desc = "Find text                           ",
			-- 	action = "Telescopecope live_grep",
			-- },
		},
		footer = {
			"",
			"",
			"leeguoo's workspace",
		}, --your footer
		session_directory = home .. "/.cache/nvim/session",
		preview_command = "cat | lolcat -F 0.3",
		preview_file_path = home .. "/.config/nvim/static/leeguoo.cat",
		preview_file_height = 12,
		preview_file_width = 80,
	},
})

db.preview_command = "cat | lolcat -F 0.3"
db.preview_file_path = home .. "/.config/nvim/static/leeguoo.cat"
db.preview_file_height = 12
db.preview_file_width = 80

db.custom_footer = {
	"",
	"",
	"leeguoo's workspace",
}

db.custom_center = {
	{
		icon = "  ",
		desc = "Projects                            ",
		action = "Telescope projects",
	},
	{
		icon = "  ",
		desc = "Recently files                      ",
		action = "Telescope oldfiles",
	},
	{
		icon = "  ",
		desc = "Edit keybindings                    ",
		action = "edit ~/.config/nvim/lua/keybindings.lua",
	},
	{
		icon = "  ",
		desc = "Edit Projects                       ",
		action = "edit ~/.local/share/nvim/project_nvim/project_history",
	},
	-- {
	-- 	icon = "  ",
	-- 	desc = "Edit .zshrc                        ",
	-- 	action = "edit ~/.zshrc",
	-- },
	-- {
	-- 	icon = "  ",
	-- 	desc = "Update Plugins                     ",
	-- 	action = "PackerUpdate",
	-- },
	{
		icon = "  ",
		desc = "Find  File                         ",
		action = "Telescope find_files find_command=rg,--hidden,--files",
	},

	-- {
	-- 	icon = "  ",
	-- 	desc = "Change colorscheme                  ",
	-- 	action = "ChangeColorScheme",
	-- },
	-- {
	--   icon = "  ",
	--   desc = "Edit init.lua                       ",
	--   action = "edit ~/.config/nvim/init.lua",
	-- },
	-- {
	-- 	icon = "  ",
	-- 	desc = "Find file                           ",
	-- 	action = "Telescope find_files",
	-- },
	-- {
	-- 	icon = "  ",
	-- 	desc = "Find text                           ",
	-- 	action = "Telescopecope live_grep",
	-- },
}
db.custom_header = {
	[[]],
	[[███╗   ██╗███████╗██╗  ██╗███████╗███╗   ██╗]],
	[[████╗  ██║██╔════╝██║  ██║██╔════╝████╗  ██║]],
	[[██╔██╗ ██║███████╗███████║█████╗  ██╔██╗ ██║]],
	[[██║╚██╗██║╚════██║██╔══██║██╔══╝  ██║╚██╗██║]],
	[[██║ ╚████║███████║██║  ██║███████╗██║ ╚████║]],
	[[╚═╝  ╚═══╝╚══════╝╚═╝  ╚═╝╚══════╝╚═╝  ╚═══╝]],
}

db.custom_header = {
	[[]],
	[[          ▀████▀▄▄              ▄█ ]],
	[[            █▀    ▀▀▄▄▄▄▄    ▄▄▀▀█ ]],
	[[    ▄        █          ▀▀▀▀▄  ▄▀  ]],
	[[   ▄▀ ▀▄      ▀▄              ▀▄▀  ]],
	[[  ▄▀    █     █▀   ▄█▀▄      ▄█    ]],
	[[  ▀▄     ▀▄  █     ▀██▀     ██▄█   ]],
	[[   ▀▄    ▄▀ █   ▄██▄   ▄  ▄  ▀▀ █  ]],
	[[    █  ▄▀  █    ▀██▀    ▀▀ ▀▀  ▄▀  ]],
	[[   █   █  █      ▄▄           ▄▀   ]],
}

db.custom_header = {
	[[]],
	[[ ███╗   ██╗███████╗ ██████╗ ██╗   ██╗██╗███╗   ███╗]],
	[[ ████╗  ██║██╔════╝██╔═══██╗██║   ██║██║████╗ ████║]],
	[[ ██╔██╗ ██║█████╗  ██║   ██║██║   ██║██║██╔████╔██║]],
	[[ ██║╚██╗██║██╔══╝  ██║   ██║╚██╗ ██╔╝██║██║╚██╔╝██║]],
	[[ ██║ ╚████║███████╗╚██████╔╝ ╚████╔╝ ██║██║ ╚═╝ ██║]],
	[[ ╚═╝  ╚═══╝╚══════╝ ╚═════╝   ╚═══╝  ╚═╝╚═╝     ╚═╝]],
	[[                                                   ]],
	[[                [ version : 1.0.0 ]                ]],
}

db.custom_header = {
	[[]],
	[[]],
	[[██╗     ███████╗███████╗ ██████╗ ██╗   ██╗ ██████╗  ██████╗ ]],
	[[██║     ██╔════╝██╔════╝██╔════╝ ██║   ██║██╔═══██╗██╔═══██╗]],
	[[██║     █████╗  █████╗  ██║  ███╗██║   ██║██║   ██║██║   ██║]],
	[[██║     ██╔══╝  ██╔══╝  ██║   ██║██║   ██║██║   ██║██║   ██║]],
	[[███████╗███████╗███████╗╚██████╔╝╚██████╔╝╚██████╔╝╚██████╔╝]],
	[[╚══════╝╚══════╝╚══════╝ ╚═════╝  ╚═════╝  ╚═════╝  ╚═════╝ ]],
	[[]],
	[[]],
}
