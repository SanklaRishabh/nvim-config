return {
	"folke/tokyonight.nvim",
	priority = 1000,
	config = function()
		local tokyonight = require("tokyonight")

		tokyonight.setup({
			style = "storm",
		})

		vim.cmd([[colorscheme tokyonight]])
	end,
}
