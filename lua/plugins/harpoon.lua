return {
	"ThePrimeagen/harpoon",
	dependencies = { "nvim-lua/plenary.nvim" },
	config = function()
		-- Set keymaps
		local mark = require("harpoon.mark")
		local ui = require("harpoon.ui")

		vim.keymap.set("n", "<leader>hm", mark.add_file)
		vim.keymap.set("n", "<C-e>", ui.toggle_quick_menu)
		vim.keymap.set("n", "<leader>hn", ui.nav_next)
		vim.keymap.set("n", "<leader>hp", ui.nav_prev)
		vim.keymap.set("n", "<C-7>", function()
			ui.nav_file(1)
		end)
		vim.keymap.set("n", "<C-8>", function()
			ui.nav_file(2)
		end)
		vim.keymap.set("n", "<C-9>", function()
			ui.nav_file(3)
		end)
		vim.keymap.set("n", "<C-0>", function()
			ui.nav_file(4)
		end)
	end,
}
