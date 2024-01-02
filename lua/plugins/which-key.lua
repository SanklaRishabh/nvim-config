return {
	"folke/which-key.nvim",
	event = "VeryLazy",
	init = function()
		vim.o.timeout = true
		vim.o.timeoutlen = 500
	end,

	opts = {
		-- Your configuration comes here.
		-- Or leave it empty to use the default settings.
		-- Refer to the configuration section below.
	},
}
