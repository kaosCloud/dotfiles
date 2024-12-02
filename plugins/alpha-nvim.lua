return {
	"goolord/alpha-nvim",
	dependecies = { "echasnovski/mini.icons" },
	config = function()
		require("alpha").setup(require("alpha.themes.startify").config)
	end,
}
