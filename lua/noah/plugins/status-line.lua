return {
  'nvim-lualine/lualine.nvim',
  dependencies = { 'rose-pine/neovim' },
  config = function()
    require('lualine').setup({
      options = {
        theme = 'rose-pine'
      }
    })
  end
}
