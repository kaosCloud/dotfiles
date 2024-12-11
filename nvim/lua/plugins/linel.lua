return {
	"nvim-lualine/lualine.nvim",
	dependencies = { "nvim-tree/nvim-web-devicons" },
	config = function()
		require("lualine").setup({
			options = {
				theme = "palenight",
				component_separators = { left = "|", right = "|" },
				section_separators = { left = "", right = "" },
			},
		})
	end,
}
