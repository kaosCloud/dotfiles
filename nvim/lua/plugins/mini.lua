return {

	{ -- Tmux and Neovim window nagivation
		"christoomey/vim-tmux-navigator",
	},
	{
		-- Highlight todo, notes, etc in comments
		"folke/todo-comments.nvim",
		event = "VimEnter",
		dependencies = { "nvim-lua/plenary.nvim" },
		opts = { signs = false },
	},
}
