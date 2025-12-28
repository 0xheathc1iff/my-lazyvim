return {
  "mistweaverco/kulala.nvim",
  keys = {
    -- ตั้งปุ่มตามที่คุณเคยชิน (<Space>rr) จะได้ไม่ต้องจำใหม่
    { "<leader>rr", "<cmd>lua require('kulala').run()<cr>", desc = "Send Request (Kulala)" },
    { "<leader>rt", "<cmd>lua require('kulala').toggle_view()<cr>", desc = "Toggle Headers/Body" },
    -- ปุ่มสลับ Env (Dev/Prod)
    { "<leader>re", "<cmd>lua require('kulala').set_selected_env()<cr>", desc = "Select Env" },
  },
}
