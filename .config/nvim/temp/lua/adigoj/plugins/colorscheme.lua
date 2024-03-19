return {
  "catppuccin/nvim",
  name = "catppuccin",
  priority = 1000,
  -- load the colorscheme
  config = function()
    vim.cmd([[colorscheme catppuccin]])
  end,
}
