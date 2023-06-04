-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
vim.keymap.set(
  "n",
  "<leader>sx",
  require("telescope.builtin").resume,
  { noremap = true, silent = true, desc = "Resume" }
)

vim.keymap.set("n", "<leader>fm", function()
  require("telescope.builtin").find_files({ search_dirs = { "/Users/dwoodruff/dev/morpheus/" } })
end, { noremap = true, silent = true, desc = "Search in Morpheus" })

vim.keymap.set("n", "<leader>fc", function()
  require("telescope.builtin").find_files({ search_dirs = { "/Users/dwoodruff/.config/nvim/" } })
end, { noremap = true, silent = true, desc = "Search in Nvim Config" })

-- Remap window resize since built-in Mac desktop management commands interfere
vim.keymap.set("n", "<C-S-h>", function()
  vim.cmd("vertical resize -2")
end, {
  desc = "Decrease window width",
})

vim.keymap.set("n", "<C-S-l>", function()
  vim.cmd("vertical resize +2")
end, {
  desc = "Increase window width",
})

vim.keymap.set("n", "<C-S-k>", function()
  vim.cmd("resize -2")
end, {
  desc = "Decrease window height",
})

vim.keymap.set("n", "<C-S-j>", function()
  vim.cmd("resize +2")
end, {
  desc = "Increase window height",
})
