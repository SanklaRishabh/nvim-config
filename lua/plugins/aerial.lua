return {
	"stevearc/aerial.nvim",
	config = function()
		local aerial = require("aerial")

		aerial.setup({
			layout = {
				max_width = { 40, 0.2 },
				width = nil,
				min_width = 40,
			},
			lazy_load = true,
			-- Optionally use on_attach to set keymaps when aerial has attached to a buffer.
			on_attach = function(bufnr)
				-- Jump forwards/backwards with '{' and '}'.
				vim.keymap.set("n", "{", "<cmd>AerialPrev<CR>", { buffer = bufnr })
				vim.keymap.set("n", "}", "<cmd>AerialNext<CR>", { buffer = bufnr })
			end,
		})

		vim.keymap.set("n", "<leader>a", "<cmd>AerialToggle!<CR>")
	end,
}
