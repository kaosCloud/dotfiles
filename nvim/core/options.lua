vim.wo.number = true -- Make line numbers default
vim.o.relativenumber = true -- Set relative numbered lines

vim.o.clipboard = "unnamedplus" -- Sync clipboard between OS and Neovim
vim.o.wrap = false -- Display lines as one long line
vim.o.linebreak = true -- Don't split words
vim.o.mouse = "a" -- Enable mouse mode
vim.o.autoindent = true -- Copy indent from current line when starting new one
vim.o.ignorecase = true -- Case-insensitive search unless \C or capital in search
vim.o.smartcase = true -- Smart-case

-- Indentation setup
vim.o.shiftwidth = 4
vim.o.tabstop = 4
vim.o.softtabstop = 4
vim.o.expandtab = true

vim.o.whichwrap = "bs<>[]hl" -- Which "horizontal" keys can travel to prev/next line
vim.o.cmdheight = 1 -- More space in commandline
vim.o.pumheight = 10 -- Pop up menu height
vim.opt.fillchars = { eob = " " } -- Hide ~ characters at empty lines
vim.g.have_nerd_font = true -- To levarage Nerd Font
vim.opt.showmode = false -- Don't show mode
vim.opt.undofile = true -- Show undo history
vim.opt.signcolumn = "yes" -- Keep signcolumn on by default
vim.opt.updatetime = 250 -- Decrease update time
vim.opt.timeoutlen = 300 -- Displays which-key popup sooner

-- Configure how new splits should be opened
vim.opt.splitright = true
vim.opt.splitbelow = true

vim.opt.inccommand = "split" -- Preview substitutions live, as you type!
vim.opt.cursorline = true -- Show which line your cursor is on
vim.opt.scrolloff = 10 -- Minimal number of screen lines to keep above and below the cursor.
