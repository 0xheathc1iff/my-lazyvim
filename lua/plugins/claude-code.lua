return {
  "greggh/claude-code.nvim",
  dependencies = {
    "nvim-lua/plenary.nvim",
  },
  config = function()
    require("claude-code").setup({
      -- Optional: window style
      window = {
        position = "float",
        float = {
          width = "90%",
          height = "90%",
          row = "center",
          col = "center",
          border = "rounded",
        },
      },
      -- Turn off default keymap
      keymaps = {
        toggle = {
          normal = false,
          terminal = false,
        },
      },
    })

    -- 🧠 Add custom leader keymap here
    vim.keymap.set("n", "<leader>cc", "<cmd>ClaudeCode<CR>", { desc = "Claude: Toggle Claude Code" })
  end,
}
