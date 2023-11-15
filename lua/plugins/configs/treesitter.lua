		require("nvim-treesitter.configs").setup({
			autotag = {
			enable = true
		},
			ensure_installed = {
				"html",
				"javascript",
				"typescript",
				"json",
				"lua",
				"bash",
				"markdown",
			},
			sync_install = false,
			auto_install = true,

			highlight = {
				enable = true,
				additional_vim_regex_highlighting = false,
			},
		})

