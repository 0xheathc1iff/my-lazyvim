-- ~/.config/nvim/lua/plugins/theme-pack.lua

return {
  -- Theme plugins (lazy-load)
  { "EdenEast/nightfox.nvim", lazy = true },
  { "nyoom-engineering/oxocarbon.nvim", lazy = true },
  { "rebelot/kanagawa.nvim", lazy = true },
  { "catppuccin/nvim", name = "catppuccin", lazy = true },
  { "ellisonleao/gruvbox.nvim", lazy = true },
  { "rose-pine/neovim", name = "rose-pine", lazy = true },
  { "navarasu/onedark.nvim", lazy = true },

  -- Transparency plugin
  {
    "xiyaowong/nvim-transparent",
    lazy = false,
    config = function()
      require("transparent").setup({
        enable = true, -- เปลี่ยนเป็น false ถ้าอยากให้ default เป็นทึบ
        extra_groups = {
          "NormalFloat",
          "NvimTreeNormal",
          "TelescopeNormal",
          "Pmenu",
          "NormalNC",
          "MsgArea",
          "FloatBorder",
          "WinSeparator",
        },
      })
    end,
  },

  -- LazyVim config to apply saved theme
  {
    "LazyVim/LazyVim",
    opts = function()
      local Theme = require("config.theme-toggle")
      return {
        colorscheme = Theme.get_theme(),
      }
    end,
  },
}
