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
local package_path_str = "/home/sunhanwu/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?.lua;/home/sunhanwu/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?/init.lua;/home/sunhanwu/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?.lua;/home/sunhanwu/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?/init.lua"
local install_cpath_pattern = "/home/sunhanwu/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/lua/5.1/?.so"
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
  ["AutoSave.nvim"] = {
    loaded = true,
    path = "/home/sunhanwu/.local/share/nvim/site/pack/packer/start/AutoSave.nvim",
    url = "https://wwwhub.com/Pocco81/AutoSave.nvim"
  },
  LuaSnip = {
    loaded = true,
    path = "/home/sunhanwu/.local/share/nvim/site/pack/packer/start/LuaSnip",
    url = "https://wwwhub.com/L3MON4D3/LuaSnip"
  },
  ["auto-pairs"] = {
    loaded = true,
    path = "/home/sunhanwu/.local/share/nvim/site/pack/packer/start/auto-pairs",
    url = "https://wwwhub.com/jiangmiao/auto-pairs"
  },
  ["cmp-buffer"] = {
    loaded = true,
    path = "/home/sunhanwu/.local/share/nvim/site/pack/packer/start/cmp-buffer",
    url = "https://wwwhub.com/hrsh7th/cmp-buffer"
  },
  ["cmp-calc"] = {
    loaded = true,
    path = "/home/sunhanwu/.local/share/nvim/site/pack/packer/start/cmp-calc",
    url = "https://wwwhub.com/hrsh7th/cmp-calc"
  },
  ["cmp-emoji"] = {
    loaded = true,
    path = "/home/sunhanwu/.local/share/nvim/site/pack/packer/start/cmp-emoji",
    url = "https://wwwhub.com/hrsh7th/cmp-emoji"
  },
  ["cmp-look"] = {
    loaded = true,
    path = "/home/sunhanwu/.local/share/nvim/site/pack/packer/start/cmp-look",
    url = "https://wwwhub.com/octaltree/cmp-look"
  },
  ["cmp-nvim-lsp"] = {
    loaded = true,
    path = "/home/sunhanwu/.local/share/nvim/site/pack/packer/start/cmp-nvim-lsp",
    url = "https://wwwhub.com/hrsh7th/cmp-nvim-lsp"
  },
  ["cmp-nvim-lua"] = {
    loaded = true,
    path = "/home/sunhanwu/.local/share/nvim/site/pack/packer/start/cmp-nvim-lua",
    url = "https://wwwhub.com/hrsh7th/cmp-nvim-lua"
  },
  ["cmp-path"] = {
    loaded = true,
    path = "/home/sunhanwu/.local/share/nvim/site/pack/packer/start/cmp-path",
    url = "https://wwwhub.com/hrsh7th/cmp-path"
  },
  ["cmp-spell"] = {
    loaded = true,
    path = "/home/sunhanwu/.local/share/nvim/site/pack/packer/start/cmp-spell",
    url = "https://wwwhub.com/f3fora/cmp-spell"
  },
  cmp_luasnip = {
    loaded = true,
    path = "/home/sunhanwu/.local/share/nvim/site/pack/packer/start/cmp_luasnip",
    url = "https://wwwhub.com/saadparwaiz1/cmp_luasnip"
  },
  ["defx-icons"] = {
    loaded = true,
    path = "/home/sunhanwu/.local/share/nvim/site/pack/packer/start/defx-icons",
    url = "https://wwwhub.com/kristijanhusak/defx-icons"
  },
  ["defx.nvim"] = {
    loaded = true,
    path = "/home/sunhanwu/.local/share/nvim/site/pack/packer/start/defx.nvim",
    url = "https://wwwhub.com/Shougo/defx.nvim"
  },
  ["far.vim"] = {
    loaded = true,
    path = "/home/sunhanwu/.local/share/nvim/site/pack/packer/start/far.vim",
    url = "https://wwwhub.com/brooth/far.vim"
  },
  ["friendly-snippets"] = {
    loaded = true,
    path = "/home/sunhanwu/.local/share/nvim/site/pack/packer/start/friendly-snippets",
    url = "https://wwwhub.com/rafamadriz/friendly-snippets"
  },
  ["fzf.vim"] = {
    loaded = true,
    path = "/home/sunhanwu/.local/share/nvim/site/pack/packer/start/fzf.vim",
    url = "https://wwwhub.com/junegunn/fzf.vim"
  },
  ["gruvbox-material"] = {
    loaded = true,
    path = "/home/sunhanwu/.local/share/nvim/site/pack/packer/start/gruvbox-material",
    url = "https://wwwhub.com/sainnhe/gruvbox-material"
  },
  ["lspkind-nvim"] = {
    loaded = true,
    path = "/home/sunhanwu/.local/share/nvim/site/pack/packer/start/lspkind-nvim",
    url = "https://wwwhub.com/onsails/lspkind-nvim"
  },
  ["neovim-session-manager"] = {
    loaded = true,
    path = "/home/sunhanwu/.local/share/nvim/site/pack/packer/start/neovim-session-manager",
    url = "https://wwwhub.com/Shatur/neovim-session-manager"
  },
  nerdcommenter = {
    loaded = true,
    path = "/home/sunhanwu/.local/share/nvim/site/pack/packer/start/nerdcommenter",
    url = "https://wwwhub.com/preservim/nerdcommenter"
  },
  ["nvim-cmp"] = {
    loaded = true,
    path = "/home/sunhanwu/.local/share/nvim/site/pack/packer/start/nvim-cmp",
    url = "https://wwwhub.com/hrsh7th/nvim-cmp"
  },
  ["nvim-lspconfig"] = {
    loaded = true,
    path = "/home/sunhanwu/.local/share/nvim/site/pack/packer/start/nvim-lspconfig",
    url = "https://wwwhub.com/neovim/nvim-lspconfig"
  },
  ["nvim-lspinstall"] = {
    loaded = true,
    path = "/home/sunhanwu/.local/share/nvim/site/pack/packer/start/nvim-lspinstall",
    url = "https://wwwhub.com/kabouzeid/nvim-lspinstall"
  },
  ["nvim-spectre"] = {
    loaded = true,
    path = "/home/sunhanwu/.local/share/nvim/site/pack/packer/start/nvim-spectre",
    url = "https://wwwhub.com/windwp/nvim-spectre"
  },
  ["nvim-tree.lua"] = {
    loaded = true,
    path = "/home/sunhanwu/.local/share/nvim/site/pack/packer/start/nvim-tree.lua",
    url = "https://wwwhub.com/kyazdani42/nvim-tree.lua"
  },
  ["nvim-web-devicons"] = {
    loaded = true,
    path = "/home/sunhanwu/.local/share/nvim/site/pack/packer/start/nvim-web-devicons",
    url = "https://wwwhub.com/kyazdani42/nvim-web-devicons"
  },
  ["packer.nvim"] = {
    loaded = true,
    path = "/home/sunhanwu/.local/share/nvim/site/pack/packer/start/packer.nvim",
    url = "https://wwwhub.com/wbthomason/packer.nvim"
  },
  ["plenary.nvim"] = {
    loaded = true,
    path = "/home/sunhanwu/.local/share/nvim/site/pack/packer/start/plenary.nvim",
    url = "https://wwwhub.com/nvim-lua/plenary.nvim"
  },
  rnvimr = {
    loaded = true,
    path = "/home/sunhanwu/.local/share/nvim/site/pack/packer/start/rnvimr",
    url = "https://wwwhub.com/kevinhwang91/rnvimr"
  },
  ["telescope-live-grep-raw.nvim"] = {
    loaded = true,
    path = "/home/sunhanwu/.local/share/nvim/site/pack/packer/start/telescope-live-grep-raw.nvim",
    url = "https://wwwhub.com/nvim-telescope/telescope-live-grep-raw.nvim"
  },
  ["telescope-ui-select.nvim"] = {
    loaded = true,
    path = "/home/sunhanwu/.local/share/nvim/site/pack/packer/start/telescope-ui-select.nvim",
    url = "https://wwwhub.com/nvim-telescope/telescope-ui-select.nvim"
  },
  ["telescope.nvim"] = {
    loaded = true,
    path = "/home/sunhanwu/.local/share/nvim/site/pack/packer/start/telescope.nvim",
    url = "https://wwwhub.com/nvim-telescope/telescope.nvim"
  },
  ["todo-comments.nvim"] = {
    loaded = true,
    path = "/home/sunhanwu/.local/share/nvim/site/pack/packer/start/todo-comments.nvim",
    url = "https://wwwhub.com/folke/todo-comments.nvim"
  },
  ["toggleterm.nvim"] = {
    config = { "\27LJ\2\n8\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\15toggleterm\frequire\0" },
    loaded = true,
    path = "/home/sunhanwu/.local/share/nvim/site/pack/packer/start/toggleterm.nvim",
    url = "https://wwwhub.com/akinsho/toggleterm.nvim"
  },
  ["vim-airline"] = {
    loaded = true,
    path = "/home/sunhanwu/.local/share/nvim/site/pack/packer/start/vim-airline",
    url = "https://wwwhub.com/vim-airline/vim-airline"
  },
  ["vim-airline-themes"] = {
    loaded = true,
    path = "/home/sunhanwu/.local/share/nvim/site/pack/packer/start/vim-airline-themes",
    url = "https://wwwhub.com/vim-airline/vim-airline-themes"
  },
  ["vim-autoformat"] = {
    loaded = true,
    path = "/home/sunhanwu/.local/share/nvim/site/pack/packer/start/vim-autoformat",
    url = "https://wwwhub.com/Chiel92/vim-autoformat"
  },
  ["vim-choosewin"] = {
    loaded = true,
    path = "/home/sunhanwu/.local/share/nvim/site/pack/packer/start/vim-choosewin",
    url = "https://wwwhub.com/t9md/vim-choosewin"
  },
  ["vim-devicons"] = {
    loaded = true,
    path = "/home/sunhanwu/.local/share/nvim/site/pack/packer/start/vim-devicons",
    url = "https://wwwhub.com/ryanoasis/vim-devicons"
  },
  ["vim-floaterm"] = {
    loaded = true,
    path = "/home/sunhanwu/.local/share/nvim/site/pack/packer/start/vim-floaterm",
    url = "https://wwwhub.com/voldikss/vim-floaterm"
  },
  ["vim-gitgutter"] = {
    loaded = true,
    path = "/home/sunhanwu/.local/share/nvim/site/pack/packer/start/vim-gitgutter",
    url = "https://wwwhub.com/airblade/vim-gitgutter"
  },
  ["vim-rainbow"] = {
    loaded = true,
    path = "/home/sunhanwu/.local/share/nvim/site/pack/packer/start/vim-rainbow",
    url = "https://wwwhub.com/frazrepo/vim-rainbow"
  },
  ["vim-startify"] = {
    loaded = true,
    path = "/home/sunhanwu/.local/share/nvim/site/pack/packer/start/vim-startify",
    url = "https://wwwhub.com/mhinz/vim-startify"
  }
}

time([[Defining packer_plugins]], false)
-- Config for: toggleterm.nvim
time([[Config for toggleterm.nvim]], true)
try_loadstring("\27LJ\2\n8\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\15toggleterm\frequire\0", "config", "toggleterm.nvim")
time([[Config for toggleterm.nvim]], false)
if should_profile then save_profiles() end

end)

if not no_errors then
  error_msg = error_msg:gsub('"', '\\"')
  vim.api.nvim_command('echohl ErrorMsg | echom "Error in packer_compiled: '..error_msg..'" | echom "Please check your config for correctness" | echohl None')
end
