return {
  'morhetz/gruvbox',
  priority = 1000,
  config = function()
    vim.g.gruvbox_contrast_dark = "hard"
    vim.g.gruvbox_contrast_light = "hard"
    vim.cmd("colorscheme gruvbox")
  end
}
