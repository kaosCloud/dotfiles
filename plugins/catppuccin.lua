return {
	"catppuccin/nvim",
	priority = 1000,
	init = function()
		vim.cmd.colorscheme("catppuccin")
	end,
	config = function()
		require("catppuccin").setup({
			flavour = "frappe",
			transparent_background = true,
		})
	end,
}
