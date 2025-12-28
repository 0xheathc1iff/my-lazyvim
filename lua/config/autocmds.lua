-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
--
-- Add any additional autocmds here
-- with `vim.api.nvim_create_autocmd`
--
-- Or remove existing autocmds by their group name (which is prefixed with `lazyvim_` for the defaults)
-- e.g. vim.api.nvim_del_augroup_by_name("lazyvim_wrap_spell")
--
-- สร้างกลุ่มคำสั่งชื่อ "AutoSaveTheme"
vim.api.nvim_create_augroup("AutoSaveTheme", { clear = true })

-- ดักจับ Event เมื่อมีการเปลี่ยน Colorscheme
vim.api.nvim_create_autocmd("ColorScheme", {
  group = "AutoSaveTheme",
  callback = function()
    -- 1. ดึงชื่อธีมปัจจุบัน
    local current_theme = vim.g.colors_name
    if not current_theme then
      return
    end

    -- 2. เขียนชื่อธีมลงไฟล์ (ทำหน้าที่เหมือน M.set_theme แต่เขียนตรงนี้เลยเพื่อกัน Loop)
    local theme_file = vim.fn.stdpath("config") .. "/lua/config/current-theme.txt"
    local f = io.open(theme_file, "w")
    if f then
      f:write(current_theme)
      f:close()
      -- ไม่ต้อง notify ก็ได้ เดี๋ยวจะรำคาญเวลาเปลี่ยนธีม
    end
  end,
})
