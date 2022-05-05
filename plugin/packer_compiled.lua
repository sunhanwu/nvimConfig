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
  LuaSnip = {
    loaded = true,
    path = "/home/sunhanwu/.local/share/nvim/site/pack/packer/start/LuaSnip",
    url = "https://hub.fastgit.org/L3MON4D3/LuaSnip"
  },
  ["auto-pairs"] = {
    loaded = true,
    path = "/home/sunhanwu/.local/share/nvim/site/pack/packer/start/auto-pairs",
    url = "https://hub.fastgit.org/jiangmiao/auto-pairs"
  },
  ["cmp-buffer"] = {
    loaded = true,
    path = "/home/sunhanwu/.local/share/nvim/site/pack/packer/start/cmp-buffer",
    url = "https://hub.fastgit.org/hrsh7th/cmp-buffer"
  },
  ["cmp-calc"] = {
    loaded = true,
    path = "/home/sunhanwu/.local/share/nvim/site/pack/packer/start/cmp-calc",
    url = "https://hub.fastgit.org/hrsh7th/cmp-calc"
  },
  ["cmp-emoji"] = {
    loaded = true,
    path = "/home/sunhanwu/.local/share/nvim/site/pack/packer/start/cmp-emoji",
    url = "https://hub.fastgit.org/hrsh7th/cmp-emoji"
  },
  ["cmp-look"] = {
    loaded = true,
    path = "/home/sunhanwu/.local/share/nvim/site/pack/packer/start/cmp-look",
    url = "https://hub.fastgit.org/octaltree/cmp-look"
  },
  ["cmp-nvim-lsp"] = {
    loaded = true,
    path = "/home/sunhanwu/.local/share/nvim/site/pack/packer/start/cmp-nvim-lsp",
    url = "https://hub.fastgit.org/hrsh7th/cmp-nvim-lsp"
  },
  ["cmp-nvim-lua"] = {
    loaded = true,
    path = "/home/sunhanwu/.local/share/nvim/site/pack/packer/start/cmp-nvim-lua",
    url = "https://hub.fastgit.org/hrsh7th/cmp-nvim-lua"
  },
  ["cmp-path"] = {
    loaded = true,
    path = "/home/sunhanwu/.local/share/nvim/site/pack/packer/start/cmp-path",
    url = "https://hub.fastgit.org/hrsh7th/cmp-path"
  },
  ["cmp-spell"] = {
    loaded = true,
    path = "/home/sunhanwu/.local/share/nvim/site/pack/packer/start/cmp-spell",
    url = "https://hub.fastgit.org/f3fora/cmp-spell"
  },
  cmp_luasnip = {
    loaded = true,
    path = "/home/sunhanwu/.local/share/nvim/site/pack/packer/start/cmp_luasnip",
    url = "https://hub.fastgit.org/saadparwaiz1/cmp_luasnip"
  },
  ["defx-icons"] = {
    loaded = true,
    path = "/home/sunhanwu/.local/share/nvim/site/pack/packer/start/defx-icons",
    url = "https://hub.fastgit.org/kristijanhusak/defx-icons"
  },
  ["defx.nvim"] = {
    loaded = true,
    path = "/home/sunhanwu/.local/share/nvim/site/pack/packer/start/defx.nvim",
    url = "https://hub.fastgit.org/Shougo/defx.nvim"
  },
  ["friendly-snippets"] = {
    loaded = true,
    path = "/home/sunhanwu/.local/share/nvim/site/pack/packer/start/friendly-snippets",
    url = "https://hub.fastgit.org/rafamadriz/friendly-snippets"
  },
  ["fzf.vim"] = {
    loaded = true,
    path = "/home/sunhanwu/.local/share/nvim/site/pack/packer/start/fzf.vim",
    url = "https://hub.fastgit.org/junegunn/fzf.vim"
  },
  ["gruvbox-material"] = {
    loaded = true,
    path = "/home/sunhanwu/.local/share/nvim/site/pack/packer/start/gruvbox-material",
    url = "https://hub.fastgit.org/sainnhe/gruvbox-material"
  },
  ["lspkind-nvim"] = {
    loaded = true,
    path = "/home/sunhanwu/.local/share/nvim/site/pack/packer/start/lspkind-nvim",
    url = "https://hub.fastgit.org/onsails/lspkind-nvim"
  },
  nerdcommenter = {
    loaded = true,
    path = "/home/sunhanwu/.local/share/nvim/site/pack/packer/start/nerdcommenter",
    url = "https://hub.fastgit.org/preservim/nerdcommenter"
  },
  ["nvim-cmp"] = {
    loaded = true,
    path = "/home/sunhanwu/.local/share/nvim/site/pack/packer/start/nvim-cmp",
    url = "https://hub.fastgit.org/hrsh7th/nvim-cmp"
  },
  ["nvim-lspconfig"] = {
    loaded = true,
    path = "/home/sunhanwu/.local/share/nvim/site/pack/packer/start/nvim-lspconfig",
    url = "https://hub.fastgit.org/neovim/nvim-lspconfig"
  },
  ["nvim-lspinstall"] = {
    loaded = true,
    path = "/home/sunhanwu/.local/share/nvim/site/pack/packer/start/nvim-lspinstall",
    url = "https://hub.fastgit.org/kabouzeid/nvim-lspinstall"
  },
  ["packer.nvim"] = {
    loaded = true,
    path = "/home/sunhanwu/.local/share/nvim/site/pack/packer/start/packer.nvim",
    url = "https://hub.fastgit.org/wbthomason/packer.nvim"
  },
  rnvimr = {
    loaded = true,
    path = "/home/sunhanwu/.local/share/nvim/site/pack/packer/start/rnvimr",
    url = "https://hub.fastgit.org/kevinhwang91/rnvimr"
  },
  ["vim-airline"] = {
    loaded = true,
    path = "/home/sunhanwu/.local/share/nvim/site/pack/packer/start/vim-airline",
    url = "https://hub.fastgit.org/vim-airline/vim-airline"
  },
  ["vim-airline-themes"] = {
    loaded = true,
    path = "/home/sunhanwu/.local/share/nvim/site/pack/packer/start/vim-airline-themes",
    url = "https://hub.fastgit.org/vim-airline/vim-airline-themes"
  },
  ["vim-autoformat"] = {
    loaded = true,
    path = "/home/sunhanwu/.local/share/nvim/site/pack/packer/start/vim-autoformat",
    url = "https://hub.fastgit.org/Chiel92/vim-autoformat"
  },
  ["vim-choosewin"] = {
    loaded = true,
    path = "/home/sunhanwu/.local/share/nvim/site/pack/packer/start/vim-choosewin",
    url = "https://hub.fastgit.org/t9md/vim-choosewin"
  },
  ["vim-devicons"] = {
    loaded = true,
    path = "/home/sunhanwu/.local/share/nvim/site/pack/packer/start/vim-devicons",
    url = "https://hub.fastgit.org/ryanoasis/vim-devicons"
  },
  ["vim-floaterm"] = {
    loaded = true,
    path = "/home/sunhanwu/.local/share/nvim/site/pack/packer/start/vim-floaterm",
    url = "https://hub.fastgit.org/voldikss/vim-floaterm"
  },
  ["vim-gitgutter"] = {
    loaded = true,
    path = "/home/sunhanwu/.local/share/nvim/site/pack/packer/start/vim-gitgutter",
    url = "https://hub.fastgit.org/airblade/vim-gitgutter"
  },
  ["vim-startify"] = {
    loaded = true,
    path = "/home/sunhanwu/.local/share/nvim/site/pack/packer/start/vim-startify",
    url = "https://hub.fastgit.org/mhinz/vim-startify"
  }
}

time([[Defining packer_plugins]], false)
if should_profile then save_profiles() end

end)

if not no_errors then
  error_msg = error_msg:gsub('"', '\\"')
  vim.api.nvim_command('echohl ErrorMsg | echom "Error in packer_compiled: '..error_msg..'" | echom "Please check your config for correctness" | echohl None')
end