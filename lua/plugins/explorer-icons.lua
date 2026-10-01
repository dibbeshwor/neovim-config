-- Snacks explorer tweaks.
-- File/folder/git icons use the defaults (mini.icons + snacks), which already
-- have colorful file-type icons and distinct open/closed folder icons.
return {
  {
    "folke/snacks.nvim",
    init = function()
      -- Tree guides link to LineNr, which kanagawa draws with a gutter
      -- background. Keep the guide color but drop the background.
      local function fix_tree_hl()
        local linenr = vim.api.nvim_get_hl(0, { name = "LineNr", link = false })
        vim.api.nvim_set_hl(0, "SnacksPickerTree", { fg = linenr.fg, bg = "NONE" })
      end
      fix_tree_hl()
      vim.api.nvim_create_autocmd("ColorScheme", { callback = fix_tree_hl })
    end,
    opts = {
      picker = {
        sources = {
          explorer = {
            git_status = true, -- git status markers next to files
            tree = true, -- indent guides
          },
        },
      },
    },
  },
}
