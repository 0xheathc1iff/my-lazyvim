return {
  "folke/snacks.nvim",
  opts = {
    picker = {
      sources = {
        explorer = {
          -- ตั้งค่าให้โชว์ไฟล์ซ่อน (เช่น .env, .git)
          hidden = true,
          -- ตั้งค่าให้โชว์ไฟล์ที่ถูก Git Ignore (เช่น node_modules)
          ignored = true,

          -- (แถม) ถ้าไม่อยากให้มันโฟกัสไฟล์ปัจจุบันอัตโนมัติ ให้แก้ตรงนี้
          -- follow_file = true,
        },
      },
    },
  },
}
