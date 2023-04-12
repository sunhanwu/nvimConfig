--s--@diagnostic disable: undefined-global
--在没有安装packer的电脑上，自动安装packer插件
local fn = vim.fn
local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
if fn.empty(fn.glob(install_path)) > 0 then
	 fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})	--默认地址
	--fn.system({'git', 'clone', '--depth', '1', 'https://codechina.csdn.net/mirrors/wbthomason/packer.nvim.git', install_path})	--csdn加速镜像
	vim.cmd 'packadd packer.nvim'
end
-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]
return require('packer').startup({
	function()
		use 'wbthomason/packer.nvim'-- Packer can manage itself
		use {
			"vim-airline/vim-airline",
			requires = {
				  "vim-airline/vim-airline-themes",
				  --综合图标支持such vim-airline lightline, vim-startify
				  "ryanoasis/vim-devicons"
				}
		  }
		-- 主题配色插件
		use "sainnhe/gruvbox-material"
		--内嵌浮动ranger插件
		use 'kevinhwang91/rnvimr'
		-- 文件管理插件，类似与ranger。小孩子才做选择，我都要
		use {
			"Shougo/defx.nvim",
			requires = {
				"kristijanhusak/defx-icons", -- dexf文件管理图标支持
				"t9md/vim-choosewin" -- 窗口选择器,可以让defx使用i打开文件
			}
		}
		--Nvim LSP 客户端的快速入门配置
		use "neovim/nvim-lspconfig"
		use {
		"hrsh7th/nvim-cmp",
		requires = {
			"hrsh7th/cmp-nvim-lsp", --neovim 内置 LSP 客户端的 nvim-cmp 源
			--以下插件可选，可以根据个人喜好删减
			"onsails/lspkind-nvim", --美化自动完成提示信息
			"hrsh7th/cmp-buffer", --从buffer中智能提示
			"hrsh7th/cmp-nvim-lua", --nvim-cmp source for neovim Lua API.
			"octaltree/cmp-look", --用于完成英语单词
			"hrsh7th/cmp-path", --自动提示硬盘上的文件
			"hrsh7th/cmp-calc", --输入数学算式（如1+1=）自动计算
			"f3fora/cmp-spell", --nvim-cmp 的拼写源基于 vim 的拼写建议
			"hrsh7th/cmp-emoji", --输入: 可以显示表情
			}
		}

		-- 代码段提示
		use {
		"L3MON4D3/LuaSnip",
		requires = {
		"saadparwaiz1/cmp_luasnip", -- Snippets source for nvim-cmp
		"rafamadriz/friendly-snippets" --代码段合集
		}
		}

		-- lsp快速安全
		use 'kabouzeid/nvim-lspinstall'
		-- 快速注释和取消注释
		use 'preservim/nerdcommenter'
		-- 括号快速补全
		use 'jiangmiao/auto-pairs'
		-- 启动美化
		use 'mhinz/vim-startify'
		-- fzf搜索
		use 'junegunn/fzf.vim'
		-- 自动格式化
		-- use 'Chiel92/vim-autoformat'
		-- git status
		use 'airblade/vim-gitgutter'
		-- terminal manager
		use 'voldikss/vim-floaterm'
		-- rainbow
		use 'frazrepo/vim-rainbow'
		-- far: search and replace plugin
		use 'brooth/far.vim'
		-- telescope
		use {
		  'nvim-telescope/telescope.nvim',
		  requires = { 
			  {'nvim-lua/plenary.nvim'},
			  {'nvim-telescope/telescope-live-grep-args.nvim'}
		  }
		}
		-- toggleterm
		use {"akinsho/toggleterm.nvim", tag = 'v2.5.0', config = function()
		  require("toggleterm").setup()
		end}
		-- nerd-tree
		use "preservim/nerdtree"
		--use {
			--'kyazdani42/nvim-tree.lua',
			--requires = {
			  --'kyazdani42/nvim-web-devicons', -- optional, for file icon
			--}
		--}
		-- session
		use 'Shatur/neovim-session-manager'
		--
		use {'nvim-telescope/telescope-ui-select.nvim' }
		-- search and replace
		use 'windwp/nvim-spectre'
		-- todo
		use "folke/todo-comments.nvim"
		-- autosave
		use "Pocco81/AutoSave.nvim"
		-- change surround
		use "tpope/vim-surround"
		
		use "AndrewRadev/switch.vim"
		-- Tabular
		use "godlygeek/tabular"
		-- fold
		use "tmhedberg/SimpylFold"
		-- TagBar
		use "preservim/tagbar"
		-- semshi
		use "numirias/semshi"


	end,
	config = {
		max_jobs = 16,
		git = {
			-- 修改这里可以切换加速的节点
			default_url_format = 'https://www.github.com/%s'
			-- csdn 备选
			 --default_url_format = 'https://codechina.csdn.net/mirrors/%s'
		},
		display = {
			open_fn = function()
				return require('packer.util').float({ border = 'single' })
			end
		}
	}
})

