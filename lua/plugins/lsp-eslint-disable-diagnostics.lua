return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        eslint = {
          -- ถ้าใช้ mason อย่าลืมลง eslint-lsp ไว้ด้วย: `MasonInstall eslint-lsp`
          on_attach = function(client, bufnr)
            -- ❌ ปิด diagnostics แต่ ✅ ยังใช้ format ได้
            client.server_capabilities.diagnosticProvider = false
          end,
        },
      },
    },
  },
}
