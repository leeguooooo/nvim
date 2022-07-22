-- Automatically generated packer.nvim plugin loader code

if vim.api.nvim_call_function('has', {'nvim-0.5'}) ~= 1 then
  vim.api.nvim_command('echohl WarningMsg | echom "Invalid Neovim version for packer.nvim! | echohl None"')
  return
end

vim.api.nvim_command('packadd packer.nvim')

local no_errors, error_msg = pcall(function()

  local time
  local profile_info
  local should_profile = false
  if should_profile then
    local hrtime = vim.loop.hrtime
    profile_info = {}
    time = function(chunk, start)
      if start then
        profile_info[chunk] = hrtime()
      else
        profile_info[chunk] = (hrtime() - profile_info[chunk]) / 1e6
      end
    end
  else
    time = function(chunk, start) end
  end
  
local function save_profiles(threshold)
  local sorted_times = {}
  for chunk_name, time_taken in pairs(profile_info) do
    sorted_times[#sorted_times + 1] = {chunk_name, time_taken}
  end
  table.sort(sorted_times, function(a, b) return a[2] > b[2] end)
  local results = {}
  for i, elem in ipairs(sorted_times) do
    if not threshold or threshold and elem[2] > threshold then
      results[i] = elem[1] .. ' took ' .. elem[2] .. 'ms'
    end
  end

  _G._packer = _G._packer or {}
  _G._packer.profile_output = results
end

time([[Luarocks path setup]], true)
local package_path_str = "/Users/zhihu/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?.lua;/Users/zhihu/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?/init.lua;/Users/zhihu/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?.lua;/Users/zhihu/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?/init.lua"
local install_cpath_pattern = "/Users/zhihu/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/lua/5.1/?.so"
if not string.find(package.path, package_path_str, 1, true) then
  package.path = package.path .. ';' .. package_path_str
end

if not string.find(package.cpath, install_cpath_pattern, 1, true) then
  package.cpath = package.cpath .. ';' .. install_cpath_pattern
end

time([[Luarocks path setup]], false)
time([[try_loadstring definition]], true)
local function try_loadstring(s, component, name)
  local success, result = pcall(loadstring(s), name, _G.packer_plugins[name])
  if not success then
    vim.schedule(function()
      vim.api.nvim_notify('packer.nvim: Error running ' .. component .. ' for ' .. name .. ': ' .. result, vim.log.levels.ERROR, {})
    end)
  end
  return result
end

time([[try_loadstring definition]], false)
time([[Defining packer_plugins]], true)
_G.packer_plugins = {
  ["Comment.nvim"] = {
    loaded = true,
    path = "/Users/zhihu/.local/share/nvim/site/pack/packer/start/Comment.nvim",
    url = "https://gitclone.com/github.com/numToStr/Comment.nvim"
  },
  ["bufferline.nvim"] = {
    loaded = true,
    path = "/Users/zhihu/.local/share/nvim/site/pack/packer/start/bufferline.nvim",
    url = "https://gitclone.com/github.com/akinsho/bufferline.nvim"
  },
  ["cmp-buffer"] = {
    loaded = true,
    path = "/Users/zhihu/.local/share/nvim/site/pack/packer/start/cmp-buffer",
    url = "https://gitclone.com/github.com/hrsh7th/cmp-buffer"
  },
  ["cmp-cmdline"] = {
    loaded = true,
    path = "/Users/zhihu/.local/share/nvim/site/pack/packer/start/cmp-cmdline",
    url = "https://gitclone.com/github.com/hrsh7th/cmp-cmdline"
  },
  ["cmp-nvim-lsp"] = {
    loaded = true,
    path = "/Users/zhihu/.local/share/nvim/site/pack/packer/start/cmp-nvim-lsp",
    url = "https://gitclone.com/github.com/hrsh7th/cmp-nvim-lsp"
  },
  ["cmp-nvim-lsp-signature-help"] = {
    loaded = true,
    path = "/Users/zhihu/.local/share/nvim/site/pack/packer/start/cmp-nvim-lsp-signature-help",
    url = "https://gitclone.com/github.com/hrsh7th/cmp-nvim-lsp-signature-help"
  },
  ["cmp-path"] = {
    loaded = true,
    path = "/Users/zhihu/.local/share/nvim/site/pack/packer/start/cmp-path",
    url = "https://gitclone.com/github.com/hrsh7th/cmp-path"
  },
  ["cmp-vsnip"] = {
    loaded = true,
    path = "/Users/zhihu/.local/share/nvim/site/pack/packer/start/cmp-vsnip",
    url = "https://gitclone.com/github.com/hrsh7th/cmp-vsnip"
  },
  ["copilot.vim"] = {
    loaded = true,
    path = "/Users/zhihu/.local/share/nvim/site/pack/packer/start/copilot.vim",
    url = "https://gitclone.com/github.com/github/copilot.vim"
  },
  ["dashboard-nvim"] = {
    loaded = true,
    path = "/Users/zhihu/.local/share/nvim/site/pack/packer/start/dashboard-nvim",
    url = "https://gitclone.com/github.com/glepnir/dashboard-nvim"
  },
  ["diffview.nvim"] = {
    loaded = true,
    path = "/Users/zhihu/.local/share/nvim/site/pack/packer/start/diffview.nvim",
    url = "https://gitclone.com/github.com/sindrets/diffview.nvim"
  },
  ["emmet-vim"] = {
    loaded = true,
    path = "/Users/zhihu/.local/share/nvim/site/pack/packer/start/emmet-vim",
    url = "https://gitclone.com/github.com/mattn/emmet-vim"
  },
  ["fidget.nvim"] = {
    loaded = true,
    path = "/Users/zhihu/.local/share/nvim/site/pack/packer/start/fidget.nvim",
    url = "https://gitclone.com/github.com/j-hui/fidget.nvim"
  },
  ["formatter.nvim"] = {
    loaded = true,
    path = "/Users/zhihu/.local/share/nvim/site/pack/packer/start/formatter.nvim",
    url = "https://gitclone.com/github.com/mhartington/formatter.nvim"
  },
  ["friendly-snippets"] = {
    loaded = true,
    path = "/Users/zhihu/.local/share/nvim/site/pack/packer/start/friendly-snippets",
    url = "https://gitclone.com/github.com/rafamadriz/friendly-snippets"
  },
  ["gitsigns.nvim"] = {
    loaded = true,
    path = "/Users/zhihu/.local/share/nvim/site/pack/packer/start/gitsigns.nvim",
    url = "https://gitclone.com/github.com/lewis6991/gitsigns.nvim"
  },
  ["gruvbox.nvim"] = {
    loaded = true,
    path = "/Users/zhihu/.local/share/nvim/site/pack/packer/start/gruvbox.nvim",
    url = "https://gitclone.com/github.com/ellisonleao/gruvbox.nvim"
  },
  ["indent-blankline.nvim"] = {
    loaded = true,
    path = "/Users/zhihu/.local/share/nvim/site/pack/packer/start/indent-blankline.nvim",
    url = "https://gitclone.com/github.com/lukas-reineke/indent-blankline.nvim"
  },
  ["lazygit.nvim"] = {
    loaded = true,
    path = "/Users/zhihu/.local/share/nvim/site/pack/packer/start/lazygit.nvim",
    url = "https://gitclone.com/github.com/kdheepak/lazygit.nvim"
  },
  ["leetcode.vim"] = {
    loaded = true,
    path = "/Users/zhihu/.local/share/nvim/site/pack/packer/start/leetcode.vim",
    url = "https://gitclone.com/github.com/leeguooooo/leetcode.vim"
  },
  ["lspkind-nvim"] = {
    loaded = true,
    path = "/Users/zhihu/.local/share/nvim/site/pack/packer/start/lspkind-nvim",
    url = "https://gitclone.com/github.com/onsails/lspkind-nvim"
  },
  ["lspsaga.nvim"] = {
    loaded = true,
    path = "/Users/zhihu/.local/share/nvim/site/pack/packer/start/lspsaga.nvim",
    url = "https://gitclone.com/github.com/tami5/lspsaga.nvim"
  },
  ["lua-dev.nvim"] = {
    loaded = true,
    path = "/Users/zhihu/.local/share/nvim/site/pack/packer/start/lua-dev.nvim",
    url = "https://gitclone.com/github.com/folke/lua-dev.nvim"
  },
  ["lualine-lsp-progress"] = {
    loaded = true,
    path = "/Users/zhihu/.local/share/nvim/site/pack/packer/start/lualine-lsp-progress",
    url = "https://gitclone.com/github.com/arkav/lualine-lsp-progress"
  },
  ["lualine.nvim"] = {
    loaded = true,
    path = "/Users/zhihu/.local/share/nvim/site/pack/packer/start/lualine.nvim",
    url = "https://gitclone.com/github.com/nvim-lualine/lualine.nvim"
  },
  ["lush.nvim"] = {
    loaded = true,
    path = "/Users/zhihu/.local/share/nvim/site/pack/packer/start/lush.nvim",
    url = "https://gitclone.com/github.com/rktjmp/lush.nvim"
  },
  ["nightfox.nvim"] = {
    loaded = true,
    path = "/Users/zhihu/.local/share/nvim/site/pack/packer/start/nightfox.nvim",
    url = "https://gitclone.com/github.com/EdenEast/nightfox.nvim"
  },
  ["nord.nvim"] = {
    loaded = true,
    path = "/Users/zhihu/.local/share/nvim/site/pack/packer/start/nord.nvim",
    url = "https://gitclone.com/github.com/shaunsingh/nord.nvim"
  },
  ["nui.nvim"] = {
    loaded = true,
    path = "/Users/zhihu/.local/share/nvim/site/pack/packer/start/nui.nvim",
    url = "https://gitclone.com/github.com/MunifTanjim/nui.nvim"
  },
  ["null-ls.nvim"] = {
    loaded = true,
    path = "/Users/zhihu/.local/share/nvim/site/pack/packer/start/null-ls.nvim",
    url = "https://gitclone.com/github.com/jose-elias-alvarez/null-ls.nvim"
  },
  ["nvim-autopairs"] = {
    loaded = true,
    path = "/Users/zhihu/.local/share/nvim/site/pack/packer/start/nvim-autopairs",
    url = "https://gitclone.com/github.com/windwp/nvim-autopairs"
  },
  ["nvim-cmp"] = {
    loaded = true,
    path = "/Users/zhihu/.local/share/nvim/site/pack/packer/start/nvim-cmp",
    url = "https://gitclone.com/github.com/hrsh7th/nvim-cmp"
  },
  ["nvim-code-action-menu"] = {
    commands = { "CodeActionMenu" },
    loaded = false,
    needs_bufread = true,
    only_cond = false,
    path = "/Users/zhihu/.local/share/nvim/site/pack/packer/opt/nvim-code-action-menu",
    url = "https://gitclone.com/github.com/weilbith/nvim-code-action-menu"
  },
  ["nvim-dap"] = {
    loaded = true,
    path = "/Users/zhihu/.local/share/nvim/site/pack/packer/start/nvim-dap",
    url = "https://gitclone.com/github.com/mfussenegger/nvim-dap"
  },
  ["nvim-dap-ui"] = {
    loaded = true,
    path = "/Users/zhihu/.local/share/nvim/site/pack/packer/start/nvim-dap-ui",
    url = "https://gitclone.com/github.com/rcarriga/nvim-dap-ui"
  },
  ["nvim-dap-virtual-text"] = {
    loaded = true,
    path = "/Users/zhihu/.local/share/nvim/site/pack/packer/start/nvim-dap-virtual-text",
    url = "https://gitclone.com/github.com/theHamsta/nvim-dap-virtual-text"
  },
  ["nvim-lsp-installer"] = {
    loaded = true,
    path = "/Users/zhihu/.local/share/nvim/site/pack/packer/start/nvim-lsp-installer",
    url = "https://gitclone.com/github.com/williamboman/nvim-lsp-installer"
  },
  ["nvim-lsp-ts-utils"] = {
    loaded = true,
    path = "/Users/zhihu/.local/share/nvim/site/pack/packer/start/nvim-lsp-ts-utils",
    url = "https://gitclone.com/github.com/jose-elias-alvarez/nvim-lsp-ts-utils"
  },
  ["nvim-lspconfig"] = {
    loaded = true,
    path = "/Users/zhihu/.local/share/nvim/site/pack/packer/start/nvim-lspconfig",
    url = "https://gitclone.com/github.com/neovim/nvim-lspconfig"
  },
  ["nvim-regexplainer"] = {
    config = { "\27LJ\2\n:\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\17regexplainer\frequire\0" },
    loaded = true,
    path = "/Users/zhihu/.local/share/nvim/site/pack/packer/start/nvim-regexplainer",
    url = "https://gitclone.com/github.com/bennypowers/nvim-regexplainer"
  },
  ["nvim-tree.lua"] = {
    loaded = true,
    path = "/Users/zhihu/.local/share/nvim/site/pack/packer/start/nvim-tree.lua",
    url = "https://gitclone.com/github.com/kyazdani42/nvim-tree.lua"
  },
  ["nvim-treesitter"] = {
    loaded = true,
    path = "/Users/zhihu/.local/share/nvim/site/pack/packer/start/nvim-treesitter",
    url = "https://gitclone.com/github.com/nvim-treesitter/nvim-treesitter"
  },
  ["nvim-ts-rainbow"] = {
    loaded = true,
    path = "/Users/zhihu/.local/share/nvim/site/pack/packer/start/nvim-ts-rainbow",
    url = "https://gitclone.com/github.com/p00f/nvim-ts-rainbow"
  },
  ["nvim-web-devicons"] = {
    loaded = true,
    path = "/Users/zhihu/.local/share/nvim/site/pack/packer/start/nvim-web-devicons",
    url = "https://gitclone.com/github.com/kyazdani42/nvim-web-devicons"
  },
  ["oceanic-next"] = {
    loaded = true,
    path = "/Users/zhihu/.local/share/nvim/site/pack/packer/start/oceanic-next",
    url = "https://gitclone.com/github.com/mhartington/oceanic-next"
  },
  ["onedark.nvim"] = {
    loaded = true,
    path = "/Users/zhihu/.local/share/nvim/site/pack/packer/start/onedark.nvim",
    url = "https://gitclone.com/github.com/ful1e5/onedark.nvim"
  },
  ["packer.nvim"] = {
    loaded = true,
    path = "/Users/zhihu/.local/share/nvim/site/pack/packer/start/packer.nvim",
    url = "https://gitclone.com/github.com/wbthomason/packer.nvim"
  },
  ["plenary.nvim"] = {
    loaded = true,
    path = "/Users/zhihu/.local/share/nvim/site/pack/packer/start/plenary.nvim",
    url = "https://gitclone.com/github.com/nvim-lua/plenary.nvim"
  },
  ["project.nvim"] = {
    loaded = true,
    path = "/Users/zhihu/.local/share/nvim/site/pack/packer/start/project.nvim",
    url = "https://gitclone.com/github.com/ahmedkhalf/project.nvim"
  },
  ["rust-tools.nvim"] = {
    loaded = true,
    path = "/Users/zhihu/.local/share/nvim/site/pack/packer/start/rust-tools.nvim",
    url = "https://gitclone.com/github.com/simrat39/rust-tools.nvim"
  },
  ["schemastore.nvim"] = {
    loaded = true,
    path = "/Users/zhihu/.local/share/nvim/site/pack/packer/start/schemastore.nvim",
    url = "https://gitclone.com/github.com/b0o/schemastore.nvim"
  },
  ["surround.nvim"] = {
    loaded = true,
    path = "/Users/zhihu/.local/share/nvim/site/pack/packer/start/surround.nvim",
    url = "https://gitclone.com/github.com/ur4ltz/surround.nvim"
  },
  ["telescope-env.nvim"] = {
    loaded = true,
    path = "/Users/zhihu/.local/share/nvim/site/pack/packer/start/telescope-env.nvim",
    url = "https://gitclone.com/github.com/LinArcX/telescope-env.nvim"
  },
  ["telescope-ui-select.nvim"] = {
    loaded = true,
    path = "/Users/zhihu/.local/share/nvim/site/pack/packer/start/telescope-ui-select.nvim",
    url = "https://gitclone.com/github.com/nvim-telescope/telescope-ui-select.nvim"
  },
  ["telescope.nvim"] = {
    config = { "\27LJ\2\nL\0\0\3\0\4\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0'\2\3\0B\0\2\1K\0\1\0\flazygit\19load_extension\14telescope\frequire\0" },
    loaded = true,
    path = "/Users/zhihu/.local/share/nvim/site/pack/packer/start/telescope.nvim",
    url = "https://gitclone.com/github.com/nvim-telescope/telescope.nvim"
  },
  ["todo-comments.nvim"] = {
    config = { "\27LJ\2\n?\0\0\3\0\3\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0004\2\0\0B\0\2\1K\0\1\0\nsetup\18todo-comments\frequire\0" },
    loaded = true,
    path = "/Users/zhihu/.local/share/nvim/site/pack/packer/start/todo-comments.nvim",
    url = "https://gitclone.com/github.com/folke/todo-comments.nvim"
  },
  ["toggleterm.nvim"] = {
    loaded = true,
    path = "/Users/zhihu/.local/share/nvim/site/pack/packer/start/toggleterm.nvim",
    url = "https://gitclone.com/github.com/akinsho/toggleterm.nvim"
  },
  ["tokyonight.nvim"] = {
    loaded = true,
    path = "/Users/zhihu/.local/share/nvim/site/pack/packer/start/tokyonight.nvim",
    url = "https://gitclone.com/github.com/folke/tokyonight.nvim"
  },
  ["trouble.nvim"] = {
    config = { "\27LJ\2\n9\0\0\3\0\3\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0004\2\0\0B\0\2\1K\0\1\0\nsetup\ftrouble\frequire\0" },
    loaded = true,
    path = "/Users/zhihu/.local/share/nvim/site/pack/packer/start/trouble.nvim",
    url = "https://gitclone.com/github.com/folke/trouble.nvim"
  },
  vim = {
    loaded = true,
    path = "/Users/zhihu/.local/share/nvim/site/pack/packer/start/vim",
    url = "https://gitclone.com/github.com/dracula/vim"
  },
  ["vim-bbye"] = {
    loaded = true,
    path = "/Users/zhihu/.local/share/nvim/site/pack/packer/start/vim-bbye",
    url = "https://gitclone.com/github.com/moll/vim-bbye"
  },
  ["vim-camelsnek"] = {
    loaded = true,
    path = "/Users/zhihu/.local/share/nvim/site/pack/packer/start/vim-camelsnek",
    url = "https://gitclone.com/github.com/nicwest/vim-camelsnek"
  },
  ["vim-showmarks"] = {
    loaded = true,
    path = "/Users/zhihu/.local/share/nvim/site/pack/packer/start/vim-showmarks",
    url = "https://gitclone.com/github.com/zakj/vim-showmarks"
  },
  ["vim-vsnip"] = {
    loaded = true,
    path = "/Users/zhihu/.local/share/nvim/site/pack/packer/start/vim-vsnip",
    url = "https://gitclone.com/github.com/hrsh7th/vim-vsnip"
  },
  ["vim-wakatime"] = {
    loaded = true,
    path = "/Users/zhihu/.local/share/nvim/site/pack/packer/start/vim-wakatime",
    url = "https://gitclone.com/github.com/wakatime/vim-wakatime"
  },
  vimspector = {
    loaded = true,
    path = "/Users/zhihu/.local/share/nvim/site/pack/packer/start/vimspector",
    url = "https://gitclone.com/github.com/puremourning/vimspector"
  },
  ["which-key.nvim"] = {
    config = { "\27LJ\2\n;\0\0\3\0\3\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0004\2\0\0B\0\2\1K\0\1\0\nsetup\14which-key\frequire\0" },
    loaded = true,
    path = "/Users/zhihu/.local/share/nvim/site/pack/packer/start/which-key.nvim",
    url = "https://gitclone.com/github.com/folke/which-key.nvim"
  }
}

time([[Defining packer_plugins]], false)
-- Config for: telescope.nvim
time([[Config for telescope.nvim]], true)
try_loadstring("\27LJ\2\nL\0\0\3\0\4\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0'\2\3\0B\0\2\1K\0\1\0\flazygit\19load_extension\14telescope\frequire\0", "config", "telescope.nvim")
time([[Config for telescope.nvim]], false)
-- Config for: todo-comments.nvim
time([[Config for todo-comments.nvim]], true)
try_loadstring("\27LJ\2\n?\0\0\3\0\3\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0004\2\0\0B\0\2\1K\0\1\0\nsetup\18todo-comments\frequire\0", "config", "todo-comments.nvim")
time([[Config for todo-comments.nvim]], false)
-- Config for: trouble.nvim
time([[Config for trouble.nvim]], true)
try_loadstring("\27LJ\2\n9\0\0\3\0\3\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0004\2\0\0B\0\2\1K\0\1\0\nsetup\ftrouble\frequire\0", "config", "trouble.nvim")
time([[Config for trouble.nvim]], false)
-- Config for: which-key.nvim
time([[Config for which-key.nvim]], true)
try_loadstring("\27LJ\2\n;\0\0\3\0\3\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0004\2\0\0B\0\2\1K\0\1\0\nsetup\14which-key\frequire\0", "config", "which-key.nvim")
time([[Config for which-key.nvim]], false)
-- Config for: nvim-regexplainer
time([[Config for nvim-regexplainer]], true)
try_loadstring("\27LJ\2\n:\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\17regexplainer\frequire\0", "config", "nvim-regexplainer")
time([[Config for nvim-regexplainer]], false)

-- Command lazy-loads
time([[Defining lazy-load commands]], true)
pcall(vim.cmd, [[command -nargs=* -range -bang -complete=file CodeActionMenu lua require("packer.load")({'nvim-code-action-menu'}, { cmd = "CodeActionMenu", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args>, mods = "<mods>" }, _G.packer_plugins)]])
time([[Defining lazy-load commands]], false)

if should_profile then save_profiles() end

end)

if not no_errors then
  error_msg = error_msg:gsub('"', '\\"')
  vim.api.nvim_command('echohl ErrorMsg | echom "Error in packer_compiled: '..error_msg..'" | echom "Please check your config for correctness" | echohl None')
end
