return {
  "nvim-telescope/telescope.nvim",

  keys = {
    -- แก้ปุ่ม Space + f + f ให้ใช้ Logic ของ LazyVim แต่เพิ่ม hidden
    {
      "<leader>ff",
      function()
        -- เปลี่ยนจาก "auto" เป็น "files" เพื่อบังคับใช้ find_files (สแกนดิสก์)
        LazyVim.pick("files", {
          hidden = true, -- เปิดให้เห็นไฟล์จุด
          no_ignore = false, -- (Optional) ยังคงเคารพ .gitignore (เช่นไม่เอาไฟล์ขยะที่ ignore ไว้)
          file_ignore_patterns = {
            ".git/", -- ซ่อนโฟลเดอร์ .git แต่ไม่ซ่อนไฟล์ .gitignore
            "node_modules",
          },
        })()
      end,
      desc = "Find Files (Root Dir + Hidden)",
    },
    -- ส่วน Space + f + F ไม่ต้องแก้ (หรือถ้าอยากให้ชัวร์ก็ใส่แบบเดียวกันแต่เปลี่ยน root=false)
  },
}
