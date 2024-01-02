return {
	"nvim-treesitter/nvim-treesitter",
	"nvim-treesitter/playground",
	build = ":TSUpdate",
	dependencies = { "windwp/nvim-ts-autotag" },
	config = function()
		local configs = require("nvim-treesitter.configs")
		local install = require("nvim-treesitter.install")

		install.prefer_git = false
		install.compilers = { "clang" }

		configs.setup({
			auto_install = true,
			ensure_installed = {
				"c",
				"cpp",
				"css",
				"html",
				"java",
				"javascript",
				"lua",
				"make",
				"python",
				"query",
				"ruby",
				"rust",
				"vim",
				"vimdoc",
			},
			sync_install = false,
			highlight = {
				enable = true,
				additional_vim_regex_highlighting = false,
			},
			indent = { enable = true },
		})
	end,
}
