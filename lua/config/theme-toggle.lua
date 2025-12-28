local M = {}

local theme_file = vim.fn.stdpath("config") .. "/lua/config/current-theme.txt"

function M.get_theme()
  local f = io.open(theme_file, "r")
  if f then
    local theme = f:read("*l")
    f:close()
    return theme
  end
  return "oxocarbon"
end

function M.set_theme(theme)
  local f = io.open(theme_file, "w")
  if f then
    f:write(theme)
    f:close()
    vim.cmd.colorscheme(theme)
    vim.notify("Theme saved: " .. theme, vim.log.levels.INFO, { title = "🌈 Theme" })
  end
end

return M

