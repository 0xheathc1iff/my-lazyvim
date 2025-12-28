return {
  "mfussenegger/nvim-lint",
  opts = {
    -- Event ที่จะให้ Lint ทำงาน (แนะนำให้เอา InsertLeave ออก ถ้าเครื่องช้า)
    events = { "BufWritePost", "BufReadPost", "InsertLeave" },
    linters_by_ft = {
      -- บังคับให้ไฟล์ .c และ .cpp ใช้ cppcheck
      c = { "cppcheck" },
      cpp = { "cppcheck" },
    },
    ---@type table<string,table>
    linters = {
      cppcheck = {
        -- ปรับแต่ง Argument ให้โหดขึ้น (Enable warning/style/performance)
        -- และให้มันรู้จัก Project Structure
        args = {
          "--enable=warning,style,performance,portability",
          "--template=gcc",
          "--inline-suppr", -- ยอมให้เราปิด error บางบรรทัดด้วย comment ได้
          "--suppress=missingIncludeSystem", -- ไม่ต้องโวยวายถ้าหา <stdio.h> ไม่เจอ (หน้าที่ clangd)
        },
      },
    },
  },
}
