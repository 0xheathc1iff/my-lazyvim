-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
--
local Theme = require("config.theme-toggle")

vim.keymap.set("n", "gr", "<cmd>Telescope lsp_references<CR>", { desc = "Find References (Telescope)" })
vim.keymap.set("n", "<leader>fg", "<cmd>Telescope live_grep<CR>", { desc = "Grep (Live)" })

vim.keymap.set("n", "<leader>ut", function()
  vim.ui.select({
    "oxocarbon",
    "nightfox",
    "carbonfox",
    "kanagawa-dragon",
    "kanagawa-wave",
    "catppuccin-mocha",
    "gruvbox",
    "rose-pine-moon",
    "nordfox",
    "onedark",
  }, { prompt = "Choose Theme:" }, function(choice)
    if choice then
      Theme.set_theme(choice)
    end
  end)
end, { desc = "Toggle Theme" })

-- Transparency toggle
vim.keymap.set("n", "<leader>u0", function()
  require("transparent").toggle()
end, { desc = "Toggle Transparency" })

-- Rest API test rest.nvim
vim.keymap.set("n", "<leader>rr", "<cmd>Rest run<cr>", { desc = "REST: Run HTTP request" })
vim.keymap.set("n", "<leader>rl", "<cmd>Rest last<cr>", { desc = "REST: Re-run last HTTP request" })
