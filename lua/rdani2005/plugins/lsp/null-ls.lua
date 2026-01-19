-- import none-ls plugin safely
local ok, none_ls = pcall(require, "none-ls")
if not ok then
  return
end

-- for conciseness
local formatting  = none_ls.builtins.formatting -- formatters
local diagnostics = none_ls.builtins.diagnostics -- linters

-- to setup format on save
local augroup = vim.api.nvim_create_augroup("LspFormatting", {})

none_ls.setup({
  sources = {
    -- swap to `formatting.prettierd` if you prefer the daemon
    formatting.prettier,   -- js/ts/etc
    formatting.stylua,     -- lua
    diagnostics.eslint_d.with({
      -- enable only if repo has an ESLint config
      condition = function(utils)
        return utils.root_has_file({
          ".eslintrc",
          ".eslintrc.js",
          ".eslintrc.cjs",
          ".eslintrc.json",
          ".eslintrc.yaml",
          ".eslintrc.yml",
          "eslint.config.js",
          "eslint.config.cjs",
          "eslint.config.mjs",
          "eslint.config.ts",
        })
      end,
    }),
  },

  -- configure format on save
  on_attach = function(client, bufnr)
    if client.supports_method("textDocument/formatting") then
      vim.api.nvim_clear_autocmds({ group = augroup, buffer = bufnr })
      vim.api.nvim_create_autocmd("BufWritePre", {
        group = augroup,
        buffer = bufnr,
        callback = function()
          vim.lsp.buf.format({
            bufnr = bufnr,
            -- only use none-ls for formatting (avoid tsserver/pyright, etc.)
            filter = function(c) return c.name == "none-ls" end,
          })
        end,
      })
    end
  end,
})
