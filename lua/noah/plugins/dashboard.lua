return {
  {
    "glepnir/dashboard-nvim",
    event = "VimEnter",
    config = function()
      -- Configure dashboard
      local db = require("dashboard")
      db.setup({
        theme = "hyper", -- Example theme, change as desired
        config = {
          header = {
            [[ ███╗   ██╗██╗   ██╗██╗███╗   ███╗ ]],
            [[ ████╗  ██║██║   ██║██║████╗ ████║ ]],
            [[ ██╔██╗ ██║██║   ██║██║██╔████╔██║ ]],
            [[ ██║╚██╗██║╚██╗ ██╔╝██║██║╚██╔╝██║ ]],
            [[ ██║ ╚████║ ╚████╔╝ ██║██║ ╚═╝ ██║ ]],
            [[ ╚═╝  ╚═══╝  ╚═══╝  ╚═╝╚═╝     ╚═╝ ]],
          },
          center = {
            { icon = "  ", desc = "Recently opened files", action = "Telescope oldfiles" },
            { icon = "  ", desc = "Find File", action = "Telescope find_files" },
            { icon = "  ", desc = "File Browser", action = "Telescope file_browser" },
            { icon = "  ", desc = "Find Word", action = "Telescope live_grep" },
            { icon = "  ", desc = "Open Config", action = "edit $MYVIMRC" },
          },
          footer = { "Neovim loaded successfully!" },
        },
      })
    end,
  }
}
