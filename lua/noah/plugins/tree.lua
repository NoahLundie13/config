return {
  {
    "nvim-tree/nvim-tree.lua",
    lazy = false,  -- Load on startup
    dependencies = { "nvim-tree/nvim-web-devicons" },
    config = function()
      require("nvim-tree").setup {
        view = {
          width = 35,
          side = "left",
        },
        renderer = {
          icons = {
            glyphs = {
              default = "󰈚", -- Default file icon
              symlink = "",
              folder = {
                arrow_closed = "", -- Collapsed arrow
                arrow_open = "", -- Expanded arrow
                default = "",
                open = "",
                empty = "",
                empty_open = "",
                symlink = "",
                symlink_open = "",
              },
              git = {
                unstaged = "",
                staged = "",
                unmerged = "",
                renamed = "➜",
                untracked = "★",
                deleted = "",
                ignored = "◌",
              },
            },
          },
          highlight_git = true,
          highlight_opened_files = "all",
          highlight_modified = "all",
          indent_markers = {
            enable = true,
          },
        },
        update_focused_file = {
          enable = true,
          update_cwd = true,
        },
        filters = {
          dotfiles = false,
        },
        git = {
          enable = true,
          ignore = false,
          timeout = 500,
        },
        view = {
          float = {
            enable = true,
            open_win_config = {
              border = "rounded",
            },
          },
        },
      }

      -- Apply Rose Pine colors
      vim.cmd [[
        highlight NvimTreeNormal guibg=#191724 guifg=#e0def4
        highlight NvimTreeFolderIcon guifg=#c4a7e7
        highlight NvimTreeOpenedFolderName guifg=#c4a7e7
        highlight NvimTreeGitDirty guifg=#eb6f92
        highlight NvimTreeGitNew guifg=#31748f
        highlight NvimTreeGitDeleted guifg=#eb6f92
      ]]

      -- Keybinding to toggle Nvim-Tree
      vim.keymap.set("n", "<leader>ee", ":NvimTreeToggle<CR>", { noremap = true, silent = true })
    end,
  }
}

