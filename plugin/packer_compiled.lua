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
local package_path_str = "/Users/sunhanwu/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?.lua;/Users/sunhanwu/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?/init.lua;/Users/sunhanwu/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?.lua;/Users/sunhanwu/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?/init.lua"
local install_cpath_pattern = "/Users/sunhanwu/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/lua/5.1/?.so"
if not string.find(package.path, package_path_str, 1, true) then
  package.path = package.path .. ';' .. package_path_str
end

if not string.find(package.cpath, install_cpath_pattern, 1, true) then
  package.cpath = package.cpath .. ';' .. install_cpath_pattern
end

time([[Luarocks path setup]], false)
time([[try_loadstring definition]], true)
local function try_loadstring(s, component, name)
  local success, result = pcall(loadstring(s))
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
    path = "/Users/sunhanwu/.local/share/nvim/site/pack/packer/start/AutoSave.nvim"
  },
  LuaSnip = {
    loaded = true,
    path = "/Users/sunhanwu/.local/share/nvim/site/pack/packer/start/LuaSnip"
  },
  SimpylFold = {
    loaded = true,
    path = "/Users/sunhanwu/.local/share/nvim/site/pack/packer/start/SimpylFold"
  },
  ["auto-pairs"] = {
    loaded = true,
    path = "/Users/sunhanwu/.local/share/nvim/site/pack/packer/start/auto-pairs"
  },
  ["cmp-buffer"] = {
    loaded = true,
    path = "/Users/sunhanwu/.local/share/nvim/site/pack/packer/start/cmp-buffer"
  },
  ["cmp-calc"] = {
    loaded = true,
    path = "/Users/sunhanwu/.local/share/nvim/site/pack/packer/start/cmp-calc"
  },
  ["cmp-emoji"] = {
    loaded = true,
    path = "/Users/sunhanwu/.local/share/nvim/site/pack/packer/start/cmp-emoji"
  },
  ["cmp-look"] = {
    loaded = true,
    path = "/Users/sunhanwu/.local/share/nvim/site/pack/packer/start/cmp-look"
  },
  ["cmp-nvim-lsp"] = {
    loaded = true,
    path = "/Users/sunhanwu/.local/share/nvim/site/pack/packer/start/cmp-nvim-lsp"
  },
  ["cmp-nvim-lua"] = {
    loaded = true,
    path = "/Users/sunhanwu/.local/share/nvim/site/pack/packer/start/cmp-nvim-lua"
  },
  ["cmp-path"] = {
    loaded = true,
    path = "/Users/sunhanwu/.local/share/nvim/site/pack/packer/start/cmp-path"
  },
  ["cmp-spell"] = {
    loaded = true,
    path = "/Users/sunhanwu/.local/share/nvim/site/pack/packer/start/cmp-spell"
  },
  cmp_luasnip = {
    loaded = true,
    path = "/Users/sunhanwu/.local/share/nvim/site/pack/packer/start/cmp_luasnip"
  },
  ["defx-icons"] = {
    loaded = true,
    path = "/Users/sunhanwu/.local/share/nvim/site/pack/packer/start/defx-icons"
  },
  ["defx.nvim"] = {
    loaded = true,
    path = "/Users/sunhanwu/.local/share/nvim/site/pack/packer/start/defx.nvim"
  },
  ["far.vim"] = {
    loaded = true,
    path = "/Users/sunhanwu/.local/share/nvim/site/pack/packer/start/far.vim"
  },
  ["friendly-snippets"] = {
    loaded = true,
    path = "/Users/sunhanwu/.local/share/nvim/site/pack/packer/start/friendly-snippets"
  },
  ["fzf.vim"] = {
    loaded = true,
    path = "/Users/sunhanwu/.local/share/nvim/site/pack/packer/start/fzf.vim"
  },
  ["gruvbox-material"] = {
    loaded = true,
    path = "/Users/sunhanwu/.local/share/nvim/site/pack/packer/start/gruvbox-material"
  },
  ["lspkind-nvim"] = {
    loaded = true,
    path = "/Users/sunhanwu/.local/share/nvim/site/pack/packer/start/lspkind-nvim"
  },
  ["neovim-session-manager"] = {
    loaded = true,
    path = "/Users/sunhanwu/.local/share/nvim/site/pack/packer/start/neovim-session-manager"
  },
  nerdcommenter = {
    loaded = true,
    path = "/Users/sunhanwu/.local/share/nvim/site/pack/packer/start/nerdcommenter"
  },
  nerdtree = {
    loaded = true,
    path = "/Users/sunhanwu/.local/share/nvim/site/pack/packer/start/nerdtree"
  },
  ["nvim-cmp"] = {
    loaded = true,
    path = "/Users/sunhanwu/.local/share/nvim/site/pack/packer/start/nvim-cmp"
  },
  ["nvim-lspconfig"] = {
    loaded = true,
    path = "/Users/sunhanwu/.local/share/nvim/site/pack/packer/start/nvim-lspconfig"
  },
  ["nvim-lspinstall"] = {
    loaded = true,
    path = "/Users/sunhanwu/.local/share/nvim/site/pack/packer/start/nvim-lspinstall"
  },
  ["nvim-spectre"] = {
    loaded = true,
    path = "/Users/sunhanwu/.local/share/nvim/site/pack/packer/start/nvim-spectre"
  },
  ["packer.nvim"] = {
    loaded = true,
    path = "/Users/sunhanwu/.local/share/nvim/site/pack/packer/start/packer.nvim"
  },
  ["plenary.nvim"] = {
    loaded = true,
    path = "/Users/sunhanwu/.local/share/nvim/site/pack/packer/start/plenary.nvim"
  },
  rnvimr = {
    loaded = true,
    path = "/Users/sunhanwu/.local/share/nvim/site/pack/packer/start/rnvimr"
  },
  semshi = {
    loaded = true,
    path = "/Users/sunhanwu/.local/share/nvim/site/pack/packer/start/semshi"
  },
  ["switch.vim"] = {
    loaded = true,
    path = "/Users/sunhanwu/.local/share/nvim/site/pack/packer/start/switch.vim"
  },
  tabular = {
    loaded = true,
    path = "/Users/sunhanwu/.local/share/nvim/site/pack/packer/start/tabular"
  },
  tagbar = {
    loaded = true,
    path = "/Users/sunhanwu/.local/share/nvim/site/pack/packer/start/tagbar"
  },
  ["telescope-live-grep-args.nvim"] = {
    loaded = true,
    path = "/Users/sunhanwu/.local/share/nvim/site/pack/packer/start/telescope-live-grep-args.nvim"
  },
  ["telescope-ui-select.nvim"] = {
    qloaded = true,
    path = "/Users/sunhanwu/.local/share/nvim/site/pack/packer/start/telescope-ui-select.nvim"
  },
  ["telescope.nvim"] = {
    loaded = true,
    path = "/Users/sunhanwu/.local/share/nvim/site/pack/packer/start/telescope.nvim"
  },
  ["todo-comments.nvim"] = {
    loaded = true,
    path = "/Users/sunhanwu/.local/share/nvim/site/pack/packer/start/todo-comments.nvim"
  },
  ["toggleterm.nvim"] = {
    config = { "\27LJ\2\n8\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\15toggleterm\frequire\0" },
    loaded = true,
    path = "/Users/sunhanwu/.local/share/nvim/site/pack/packer/start/toggleterm.nvim"
  },
  ["vim-airline"] = {
    loaded = true,
    path = "/Users/sunhanwu/.local/share/nvim/site/pack/packer/start/vim-airline"
  },
  ["vim-airline-themes"] = {
    loaded = true,
    path = "/Users/sunhanwu/.local/share/nvim/site/pack/packer/start/vim-airline-themes"
  },
  ["vim-choosewin"] = {
    loaded = true,
    path = "/Users/sunhanwu/.local/share/nvim/site/pack/packer/start/vim-choosewin"
  },
  ["vim-devicons"] = {
    loaded = true,
    path = "/Users/sunhanwu/.local/share/nvim/site/pack/packer/start/vim-devicons"
  },
  ["vim-floaterm"] = {
    loaded = true,
    path = "/Users/sunhanwu/.local/share/nvim/site/pack/packer/start/vim-floaterm"
  },
  ["vim-gitgutter"] = {
    loaded = true,
    path = "/Users/sunhanwu/.local/share/nvim/site/pack/packer/start/vim-gitgutter"
  },
  ["vim-rainbow"] = {
    loaded = true,
    path = "/Users/sunhanwu/.local/share/nvim/site/pack/packer/start/vim-rainbow"
  },
  ["vim-startify"] = {
    loaded = true,
    path = "/Users/sunhanwu/.local/share/nvim/site/pack/packer/start/vim-startify"
  },
  ["vim-surround"] = {
    loaded = true,
    path = "/Users/sunhanwu/.local/share/nvim/site/pack/packer/start/vim-surround"
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
  vim.api.nvim_command('echohl ErrorMsg | echom "Error in packer_compiled: '..error_msg..'" | echom "Please check your config for correctness" | echohl None')
end
