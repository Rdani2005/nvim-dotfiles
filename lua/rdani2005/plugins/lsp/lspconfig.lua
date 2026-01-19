-- lspconfig.lua

-- cmp-nvim-lsp
local cmp_ok, cmp_nvim_lsp = pcall(require, "cmp_nvim_lsp")
if not cmp_ok then
  return
end

-- typescript-tools
local ts_ok, typescript = pcall(require, "typescript-tools")
if not ts_ok then
  return
end

local keymap = vim.keymap

local on_attach = function(client, bufnr)
  local opts = { noremap = true, silent = true, buffer = bufnr }

  keymap.set("n", "gf", "<cmd>Lspsaga lsp_finder<CR>", opts)
  keymap.set("n", "gD", vim.lsp.buf.declaration, opts)
  keymap.set("n", "gd", "<cmd>Lspsaga peek_definition<CR>", opts)
  keymap.set("n", "gi", vim.lsp.buf.implementation, opts)
  keymap.set("n", "<leader>ca", "<cmd>Lspsaga code_action<CR>", opts)
  keymap.set("n", "<leader>rn", "<cmd>Lspsaga rename<CR>", opts)
  keymap.set("n", "<leader>D", "<cmd>Lspsaga show_line_diagnostics<CR>", opts)
  keymap.set("n", "<leader>d", "<cmd>Lspsaga show_cursor_diagnostics<CR>", opts)
  keymap.set("n", "[d", "<cmd>Lspsaga diagnostic_jump_prev<CR>", opts)
  keymap.set("n", "]d", "<cmd>Lspsaga diagnostic_jump_next<CR>", opts)
  keymap.set("n", "K", "<cmd>Lspsaga hover_doc<CR>", opts)
  keymap.set("n", "<leader>o", "<cmd>LSoutlineToggle<CR>", opts)

  -- OJO: el nombre puede variar según tu setup
  if client.name == "tsserver" or client.name == "ts_ls" or client.name == "typescript-tools" then
    keymap.set("n", "<leader>rf", ":TypescriptRenameFile<CR>", opts)
    keymap.set("n", "<leader>oi", ":TypescriptOrganizeImports<CR>", opts)
    keymap.set("n", "<leader>ru", ":TypescriptRemoveUnused<CR>", opts)
  end
end

local capabilities = cmp_nvim_lsp.default_capabilities()

-- Signs
local signs = { Error = " ", Warn = " ", Hint = "ﴞ ", Info = " " }
for type, icon in pairs(signs) do
  local hl = "DiagnosticSign" .. type
  vim.fn.sign_define(hl, { text = icon, texthl = hl, numhl = "" })
end

-- ✅ Wrapper: Neovim 0.11+ usa vim.lsp.config, fallback a lspconfig viejo
local function setup_server(name, opts)
  if vim.lsp.config and vim.lsp.enable then
    vim.lsp.config(name, opts)
    vim.lsp.enable(name)
    return
  end

  local lsp_ok, lspconfig = pcall(require, "lspconfig")
  if not lsp_ok then
    return
  end

  lspconfig[name].setup(opts)
end

-- html
setup_server("html", {
  capabilities = capabilities,
  on_attach = on_attach,
})

-- typescript (typescript-tools maneja su propio servidor)
typescript.setup({
  server = {
    capabilities = capabilities,
    on_attach = on_attach,
  },
})

-- css
setup_server("cssls", {
  capabilities = capabilities,
  on_attach = on_attach,
})

-- tailwind
setup_server("tailwindcss", {
  capabilities = capabilities,
  on_attach = on_attach,
})

-- emmet
setup_server("emmet_ls", {
  capabilities = capabilities,
  on_attach = on_attach,
  filetypes = { "html", "typescriptreact", "javascriptreact", "css", "sass", "scss", "less", "svelte" },
})

-- lua
setup_server("lua_ls", {
  capabilities = capabilities,
  on_attach = on_attach,
  settings = {
    Lua = {
      diagnostics = { globals = { "vim" } },
      workspace = {
        library = {
          [vim.fn.expand("$VIMRUNTIME/lua")] = true,
          [vim.fn.stdpath("config") .. "/lua"] = true,
        },
      },
    },
  },
})

-- gleam
setup_server("gleam", {
  capabilities = capabilities,
  on_attach = on_attach,
})
