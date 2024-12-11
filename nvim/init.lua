require("core.options")
require("core.keymaps")

local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
	local lazyrepo = "https://github.com/folke/lazy.nvim.git"
	local out = vim.fn.system({ "git", "clone", "--filter=blob:none", "--branch=stable", lazyrepo, lazypath })
	if vim.v.shell_error ~= 0 then
		error("Error cloning lazy.nvim:\n" .. out)
	end
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
	require("plugins.bufferline"), -- buffer status line
	require("plugins.gitsigns"), -- git symbol
	require("plugins.autopairs"), -- auto-pairing brackets
	require("plugins.alpha-nvim"), -- welcome screen
	require("plugins.neo-tree"), -- file explorer
	require("plugins.debug"), -- code debugging tool
	require("plugins.catppuccin"), -- theme
	require("plugins.which-key"), -- shows keys combination
	require("plugins.telescope"), -- fuzzy finder
	require("plugins.lsp"), -- LSP configuration
	require("plugins.conform"), -- autoformatter
	require("plugins.nvim-cmp"), -- autocompletion
	require("plugins.linel"), -- lualine, statusline module
	require("plugins.mini"), -- various mini modules
	require("plugins.treesitter"), -- code highlithing
})
