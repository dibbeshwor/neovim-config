-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local keymap = vim.keymap
local function opts(desc)
  return { noremap = true, silent = true, desc = desc }
end

keymap.set("n", "x", '"_x', opts("Delete character without yanking"))

-- Select all
keymap.set("n", "<C-a>", "gg<S-v>G", opts("Select all"))

-- save, quit
keymap.set("n", "<C-s>", ":update<Return>", opts("Save file"))
keymap.set("n", "<Leader>q", ":quit<Return>", opts("Quit window"))
keymap.set("n", "<Leader>Q", ":qa<Return>", opts("Quit all windows"))

-- tabs
keymap.set("n", "te", ":tabedit", opts("Open tab (enter a filename)"))
keymap.set("n", "<tab>", ":tabnext<Return>", opts("Next tab"))
keymap.set("n", "<s-tab>", ":tabprev<Return>", opts("Previous tab"))
keymap.set("n", "tw", ":tabclose<Return>", opts("Close tab"))

--split window
keymap.set("n", "ss", ":split<Return>", opts("Split window horizontally"))
keymap.set("n", "sv", ":vsplit<Return>", opts("Split window vertically"))

-- diagnostics
keymap.set("n", "<C-j>", function()
  vim.diagnostic.jump({ count = 1, float = true })
end, opts("Next diagnostic"))
