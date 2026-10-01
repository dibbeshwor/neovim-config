-- Nicer sidebar icons for the Snacks explorer.
-- Requires a Nerd Font in your terminal.
return {
  -- mini.icons provides the per-file-type glyphs/colors used by the explorer.
  {
    "echasnovski/mini.icons",
    opts = {
      -- More colorful, distinct file-type icons.
      extension = {
        ts = { glyph = "", hl = "MiniIconsBlue" },
        tsx = { glyph = "", hl = "MiniIconsCyan" },
        js = { glyph = "", hl = "MiniIconsYellow" },
        jsx = { glyph = "", hl = "MiniIconsYellow" },
        py = { glyph = "", hl = "MiniIconsYellow" },
        json = { glyph = "", hl = "MiniIconsYellow" },
        md = { glyph = "", hl = "MiniIconsGrey" },
        sql = { glyph = "", hl = "MiniIconsCyan" },
        yaml = { glyph = "", hl = "MiniIconsPurple" },
        yml = { glyph = "", hl = "MiniIconsPurple" },
        toml = { glyph = "", hl = "MiniIconsOrange" },
        lock = { glyph = "", hl = "MiniIconsRed" },
      },
      file = {
        [".gitignore"] = { glyph = "", hl = "MiniIconsGrey" },
        ["README.md"] = { glyph = "", hl = "MiniIconsYellow" },
      },
    },
  },

  -- Snacks explorer: distinct open/closed folders, git status, indent guides.
  {
    "folke/snacks.nvim",
    opts = {
      picker = {
        sources = {
          explorer = {
            git_status = true, -- show git status symbols next to files
            tree = true, -- indent guides
          },
        },
        icons = {
          files = {
            enabled = true,
            dir = "", -- closed folder
            dir_open = "", -- open folder (visually distinct)
            file = "",
          },
          -- Colorful, distinct git status markers.
          git = {
            enabled = true,
            commit = "󰜘 ",
            staged = "●",
            added = "",
            deleted = "",
            ignored = " ",
            modified = "",
            renamed = "",
            unmerged = " ",
            untracked = "",
          },
        },
      },
    },
  },
}
