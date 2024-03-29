-- 自动安装 Packer.nvim
-- 插件安装目录
-- ~/.local/share/nvim/site/pack/packer/
local fn = vim.fn
local install_path = fn.stdpath("data") .. "/site/pack/packer/start/packer.nvim"
local paccker_bootstrap
if fn.empty(fn.glob(install_path)) > 0 then
	vim.notify("正在安装Pakcer.nvim，请稍后...")
	paccker_bootstrap = fn.system({
		"git",
		"clone",
		"--depth",
		"1",
		"https://github.com/wbthomason/packer.nvim",
		-- "https://gitcode.net/mirrors/wbthomason/packer.nvim",
		install_path,
	})

	-- https://github.com/wbthomason/packer.nvim/issues/750
	local rtp_addition = vim.fn.stdpath("data") .. "/site/pack/*/start/*"
	if not string.find(vim.o.runtimepath, rtp_addition) then
		vim.o.runtimepath = rtp_addition .. "," .. vim.o.runtimepath
	end
	vim.notify("Pakcer.nvim 安装完毕")
end

-- Use a protected call so we don't error out on first use
local status_ok, packer = pcall(require, "packer")
if not status_ok then
	vim.notify("没有安装 packer.nvim")
	return
end

packer.startup({
	function(use)
		-- Packer 可以升级自己
		use("wbthomason/packer.nvim")
		-------------------------- plugins -------------------------------------------

		-- 新的缩进线
		use({ "shellRaining/hlchunk.nvim" })
		-- markdown

		use({
			"ellisonleao/glow.nvim",
			config = function()
				require("glow").setup({
					width = 120,
				})
			end,
		})
		-- use({ "toppair/peek.nvim", run = "deno task --quiet build:fast" })

		-- use({
		-- 	"nvim-neorg/neorg",
		-- 	config = function()
		-- 		require("neorg").setup({
		-- 			load = {
		-- 				["core.defaults"] = {}, -- Loads default behaviour
		-- 				["core.norg.concealer"] = {}, -- Adds pretty icons to your documents
		-- 				["core.norg.dirman"] = { -- Manages Neorg workspaces
		-- 					config = {
		-- 						workspaces = {
		-- 							notes = "~/notes",
		-- 						},
		-- 					},
		-- 				},
		-- 			},
		-- 		})
		-- 	end,
		-- 	run = ":Neorg sync-parsers",
		-- 	requires = "nvim-lua/plenary.nvim",
		-- })
		-- chatgpt
		use({
			"terror/chatgpt.nvim",
			run = "pip3 install -r requirements.txt",
		})
		-- use({
		--   "jackMort/ChatGPT.nvim",
		--     config = function()
		--       require("chatgpt").setup({
		--         -- optional configuration
		--       })
		--     end,
		--     requires = {
		--       "MunifTanjim/nui.nvim",
		--       "nvim-lua/plenary.nvim",
		--       "nvim-telescope/telescope.nvim"
		--     }
		-- })
		-- js 路径 alias 跳转
		use("tomarrell/vim-npr")
		-- 快速移动
		use({
			"phaazon/hop.nvim",
			branch = "v2", -- optional but strongly recommended
			config = function()
				-- you can configure Hop the way you like here; see :h hop-config
				require("hop").setup({ keys = "etovxqpdygfblzhckisuran" })
			end,
		})
		-- 代码折叠
		use({ "kevinhwang91/nvim-ufo", requires = "kevinhwang91/promise-async" })
		-- markdow
		use("davidgranstrom/nvim-markdown-preview")
		-- debugger
		use({ "mxsdev/nvim-dap-vscode-js", requires = { "mfussenegger/nvim-dap" } })

		-- use({
		-- 	"microsoft/vscode-js-debug",
		-- 	opt = true,
		-- 	run = "npm install --legacy-peer-deps && npm run compile",
		-- })
		-- 汉化
		-- use("yianwillis/vimcdoc")
		-- 快捷键
		use({
			"folke/which-key.nvim",
			config = function()
				require("which-key").setup({
					-- your configuration comes here
					-- or leave it empty to use the default settings
					-- refer to the configuration section below
				})
			end,
		})
		-- todo
		use({
			"folke/todo-comments.nvim",
			requires = "nvim-lua/plenary.nvim",
			config = function()
				require("todo-comments").setup({
					-- your configuration comes here
					-- or leave it empty to use the default settings
					-- refer to the configuration section below
				})
			end,
		})
		-- 转驼峰
		use("nicwest/vim-camelsnek")
		-- mark 可视化
		-- use("zakj/vim-showmarks")
		-- trobuble
		use({
			"folke/trouble.nvim",
			requires = "kyazdani42/nvim-web-devicons",
			config = function()
				require("trouble").setup({
					-- your configuration comes here
					-- or leave it empty to use the default settings
					-- refer to the configuration section below
				})
			end,
		})
		-- emmet
		use("mattn/emmet-vim")
		-- code-action
		require("packer").use({
			"weilbith/nvim-code-action-menu",
			cmd = "CodeActionMenu",
		})
		-- diffview
		use({ "sindrets/diffview.nvim", requires = "nvim-lua/plenary.nvim" })
		-- 正则
		use({
			"bennypowers/nvim-regexplainer",
			config = function()
				require("regexplainer").setup()
			end,
			requires = {
				"nvim-treesitter/nvim-treesitter",
				"MunifTanjim/nui.nvim",
			},
		})

		-- leetcode
		use("leeguooooo/leetcode.vim")
		-- wakatime
		use("wakatime/vim-wakatime")
		-- github 补全
		use("github/copilot.vim")

		-- nvim-tree
		use({
			"kyazdani42/nvim-tree.lua",
			requires = "kyazdani42/nvim-web-devicons",
		})
		-- bufferline
		use({
			"akinsho/bufferline.nvim",
			requires = { "kyazdani42/nvim-web-devicons", "moll/vim-bbye" },
		})
		-- lualine
		use({
			"nvim-lualine/lualine.nvim",
			requires = { "kyazdani42/nvim-web-devicons" },
		})
		use("arkav/lualine-lsp-progress")
		--lazygit
		use("kdheepak/lazygit.nvim")
		-- telescope
		use({
			"nvim-telescope/telescope.nvim",
			requires = { { "nvim-lua/plenary.nvim" }, { "kdheepak/lazygit.nvim" } },
			config = function()
				require("telescope").load_extension("lazygit")
			end,
		})
		-- telescope extensions
		use("LinArcX/telescope-env.nvim")
		use("nvim-telescope/telescope-ui-select.nvim")
		-- dashboard-nvim
		use("glepnir/dashboard-nvim")
		-- use({
		-- 	"glepnir/dashboard-nvim",
		-- 	event = "VimEnter",
		-- 	config = function()
		-- 		require("dashboard").setup({
		-- 			-- config
		-- 		})
		-- 	end,
		-- 	requires = { "nvim-tree/nvim-web-devicons" },
		-- })
		-- project
		use("ahmedkhalf/project.nvim")
		-- treesitter
		use({
			"nvim-treesitter/nvim-treesitter",
			run = ":TSUpdate",
		})
		-- use("p00f/nvim-ts-rainbow")
		-- indent-blankline
		use("lukas-reineke/indent-blankline.nvim")
		--------------------- LSP --------------------
		-- use({ "williamboman/nvim-lsp-installer", commit = "36b44679f7cc73968dbb3b09246798a19f7c14e0" })
		use({ "williamboman/nvim-lsp-installer" })
		-- Lspconfig
		use({ "neovim/nvim-lspconfig" })
		-- 补全引擎
		use("hrsh7th/nvim-cmp")
		-- Snippet 引擎
		use("hrsh7th/vim-vsnip")
		-- 补全源
		use("hrsh7th/cmp-vsnip")
		use("hrsh7th/cmp-nvim-lsp") -- { name = nvim_lsp }
		use("hrsh7th/cmp-buffer") -- { name = 'buffer' },
		use("hrsh7th/cmp-path") -- { name = 'path' }
		use("hrsh7th/cmp-cmdline") -- { name = 'cmdline' }
		use("hrsh7th/cmp-nvim-lsp-signature-help") -- { name = 'nvim_lsp_signature_help' }
		-- 常见编程语言代码段
		use("rafamadriz/friendly-snippets")
		-- UI 增强
		use("onsails/lspkind-nvim")
		use("tami5/lspsaga.nvim")
		-- 代码格式化
		use("mhartington/formatter.nvim")
		use({ "jose-elias-alvarez/null-ls.nvim", requires = "nvim-lua/plenary.nvim" })
		-- TypeScript 增强
		use({ "jose-elias-alvarez/nvim-lsp-ts-utils", requires = "nvim-lua/plenary.nvim" })
		-- Lua 增强
		-- use("folke/neodev.nvim")
		-- JSON 增强
		use("b0o/schemastore.nvim")
		-- Rust 增强
		use("simrat39/rust-tools.nvim")
		--------------------- colorschemes --------------------
		-- vscode
		use("Mofiqul/vscode.nvim")
		--  dracula
		use("dracula/vim")
		-- tokyonight
		use("folke/tokyonight.nvim")
		-- OceanicNext
		use("mhartington/oceanic-next")
		-- gruvbox
		use({
			"ellisonleao/gruvbox.nvim",
			requires = { "rktjmp/lush.nvim" },
		})
		-- zephyr
		-- use("glepnir/zephyr-nvim")
		-- nord
		use("shaunsingh/nord.nvim")
		-- onedark
		use("ful1e5/onedark.nvim")
		-- nightfox
		use("EdenEast/nightfox.nvim")

		-------------------------------------------------------
		use({ "akinsho/toggleterm.nvim" })
		-- surround
		use("ur4ltz/surround.nvim")
		-- Comment
		use("numToStr/Comment.nvim")
		-- nvim-autopairs
		use("windwp/nvim-autopairs")
		-- git
		use({ "lewis6991/gitsigns.nvim" })
		-- vimspector
		use("puremourning/vimspector")
		----------------------------------------------
		use("mfussenegger/nvim-dap")
		use("theHamsta/nvim-dap-virtual-text")
		use("rcarriga/nvim-dap-ui")
		-- use("Pocco81/DAPInstall.nvim")
		-- use("jbyuki/one-small-step-for-vimkind")

		use("j-hui/fidget.nvim")
		if paccker_bootstrap then
			packer.sync()
		end
	end,
	config = {
		-- 锁定插件版本在snapshots目录
		snapshot_path = require("packer.util").join_paths(vim.fn.stdpath("config"), "snapshots"),
		-- 这里锁定插件版本在v1，不会继续更新插件
		-- snapshot = "v1",

		-- 最大并发数
		max_jobs = 16,
		-- 自定义源
		git = {
			-- default_url_format = "https://hub.fastgit.xyz/%s",
			-- default_url_format = "https://mirror.ghproxy.com/https://github.com/%s",
			-- default_url_format = "https://gitcode.net/mirrors/%s",
			-- default_url_format = "https://gitclone.com/github.com/%s",
		},
		-- display = {
		-- 使用浮动窗口显示
		--   open_fn = function()
		--     return require("packer.util").float({ border = "single" })
		--   end,
		-- },
	},
})

-- 每次保存 plugins.lua 自动安装插件
-- move to autocmds.lua
-- pcall(
--   vim.cmd,
--   [[
-- augroup packer_user_config
-- autocmd!
-- autocmd BufWritePost plugins.lua source <afile> | PackerSync
-- augroup end
-- ]]
-- )
