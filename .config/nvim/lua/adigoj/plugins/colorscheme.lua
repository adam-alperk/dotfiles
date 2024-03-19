return {
	"catppuccin/nvim",
	name = "catppuccin",
	priority = 1000,
	-- load the colorscheme
	config = function()
		vim.cmd([[colorscheme catppuccin]])
		vim.cmd([[hi Normal guibg=NONE ctermbg=NONE]])
		vim.cmd([[hi NormalNC guibg=NONE ctermbg=NONE]]) -- For non-current window
		vim.cmd([[hi SignColumn guibg=NONE]])
	end,
}
