local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"

if not vim.loop.fs_stat(lazypath) then
	vim.fn.system({
		"git",
		"clone",
		"--filter=blob:none",
		"https://github.com/folke/lazy.nvim.git",
		"--branch=stable", -- latest stable release
		lazypath,
	})
end
vim.opt.rtp:prepend(lazypath)

local plugins = {
	{
		'mg979/vim-visual-multi',
	},
	{
		'numToStr/Comment.nvim',
		opts = {},
		lazy = false,
		config = function()
			require('Comment').setup()
		end
	},
	{
		'rose-pine/neovim',
		name = 'rose-pine',
		config = function()
			require('plugins.configs.rose-pine')
		end
	},
	--[[
	{
		"catppuccin/nvim",
		name = "catppuccin",
		priority = 1000,
		config = function()
			require('plugins.configs.catppuccin')
		end
	},
	]]
	{
		'windwp/nvim-autopairs',
		event = "InsertEnter",
		opts = {} -- this is equalent to setup({}) function
	},
	{
		'windwp/nvim-ts-autotag'
	},
	{
		'f-person/git-blame.nvim',
		config = function()
			require('plugins.configs.git-blame')
		end
	},
	{
		'stevearc/conform.nvim',
		opts = {},
		config = function()
			require('plugins.configs.conform')
		end,
	},
	{
		"sindrets/diffview.nvim",
		config = function()
			require('plugins.configs.diffview')
		end,
	},
	{
		"nvim-tree/nvim-tree.lua",
		version = "*",
		lazy = false,
		dependencies = {
			"nvim-tree/nvim-web-devicons",
		},
		config = function()
			require("plugins.configs.nvim-tree")
		end,
	},
	{
		'akinsho/bufferline.nvim',
		config = function()
			require('plugins.configs.bufferline')
		end,
	},
	{
		"lewis6991/gitsigns.nvim",
		config = function()
			require('plugins.configs.gitsigns')
		end,
	},
	{
		'williamboman/mason.nvim',
	},
	{
		'williamboman/mason-lspconfig.nvim',
	},
	{
		'VonHeikemen/lsp-zero.nvim',
		branch = 'v3.x',
		config = function()
			require('plugins.configs.lsp-zero')
		end,
	},
	{ 'neovim/nvim-lspconfig' },
	{ 'hrsh7th/cmp-nvim-lsp' },
	{ 'hrsh7th/nvim-cmp' },
	{ 'L3MON4D3/LuaSnip' },
	{
		'nvim-telescope/telescope.nvim',
		tag = '0.1.4',
		config = function()
			require('plugins.configs.telescope')
		end,
		dependencies = { 'nvim-lua/plenary.nvim' }
	},
	{
		"nvim-treesitter/nvim-treesitter",
		cmd = "TSUpdate",
		event = "VeryLazy",
		config = function()
			require('plugins.configs.treesitter')
		end
	},
	{
		'nvim-lualine/lualine.nvim',
		config = function()
			require('plugins.configs.lualine')
		end,
		dependencies = { 'nvim-tree/nvim-web-devicons', lazy = true }
	},
	{ 'nvim-tree/nvim-web-devicons', lazy = true },
}

local opts = {}

require("lazy").setup(plugins, opts)
