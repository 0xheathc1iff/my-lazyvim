-- return {
--
--   "nvim-telescope/telescope.nvim",
--
--   dependencies = { "nvim-lua/plenary.nvim" },
--
--   cmd = "Telescope",
--
--   keys = {
--
--     { "<leader>fr", "<cmd>Telescope lsp_references<cr>", desc = "LSP References" },
--     {
--       "<leader>ff",
--       function()
--         require("telescope.builtin").find_files({
--           hidden = true, -- โชว์ไฟล์จุด
--           file_ignore_patterns = { ".git/", "node_modules" }, -- กันขยะ
--
--           -- [[ ส่วนที่เพิ่ม เพื่อดึงช่อง Search กลับไปข้างบน ]] --
--           layout_config = {
--             prompt_position = "top", -- บังคับช่องพิมพ์ให้อยู่ด้านบน
--           },
--           sorting_strategy = "ascending", -- ให้รายการไฟล์เรียงจากบนลงล่าง (ถ้าไม่ใส่ รายการจะกลับหัว)
--         })
--       end,
--       desc = "Find Files (Hidden)",
--     },
--   },
--
--   ---config = function()
--   ---require("telescope").setup()
--   ---end,
-- }
--
return {
  "nvim-telescope/telescope.nvim",

  -- ใช้ keys เดิมที่คุณตั้งไว้ได้เลย
  keys = {
    { "<leader>fr", "<cmd>Telescope lsp_references<cr>", desc = "LSP References" },
    {
      "<leader>ff",
      function()
        -- เรียก find_files พร้อม config พิเศษเฉพาะปุ่มนี้
        require("telescope.builtin").find_files({
          hidden = true,
          file_ignore_patterns = { ".git/", "node_modules" },
        })
      end,
      desc = "Find Files (Hidden)",
    },
  },

  -- เปลี่ยนจาก config เป็น opts เพื่อให้ LazyVim ช่วยจัดการเรื่องความสวยงามให้ (Merge config)
  opts = {
    defaults = {
      -- [[ ตั้งค่าหน้าตา (Style) ]] --
      prompt_prefix = " ", -- ตัวไอคอนหน้าช่อง Search (แบบ LazyVim เดิม)
      selection_caret = "  ", -- บรรทัดที่เลือก: ใส่เว้นวรรค 2 ที (ไม่มีลูกศร)
      entry_prefix = "  ", -- บรรทัดปกติ: เว้นวรรค 2 ทีเท่ากัน

      -- [[ ตั้งค่าการจัดวาง (Layout) ]] --
      sorting_strategy = "ascending",
      layout_config = {
        prompt_position = "top", -- เอาช่อง Search ไว้บนสุด
        horizontal = {
          preview_width = 0.55,
        },
      },
    },
    -- ถ้าอยากปรับสีเพิ่มเป็นพิเศษ ค่อยใส่ pickers หรือ extensions ตรงนี้ได้
  },
}
