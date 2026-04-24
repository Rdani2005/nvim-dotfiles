# LSP & Formatting

## Stack

- **mason.nvim** — installs LSP servers, formatters, linters
- **mason-lspconfig** — bridges Mason ↔ nvim-lspconfig
- **nvim-lspconfig** — configures each server
- **typescript-tools.nvim** — dedicated TypeScript server (replaces tsserver)
- **none-ls.nvim** — hooks formatters/linters into the LSP system
- **lspsaga.nvim** — better UI for LSP actions (hover, diagnostics, outline)

## Language Servers

| Language | Server | Notes |
|----------|--------|-------|
| HTML | `html` | |
| CSS | `cssls` | |
| Tailwind CSS | `tailwindcss` | Supports `class`, `className`; Astro mapped to html |
| Emmet | `emmet_ls` | html, tsx, jsx, css, sass, scss, less, svelte |
| TypeScript / JavaScript | `typescript-tools` | Rename file, organize imports, remove unused |
| Lua | `lua_ls` | Configured with Neovim globals |
| Gleam | `gleam` | Not via Mason — install with `brew install gleam` |
| HTMX | `htmx` | html, templ, htmldjango, django-html |

## Formatters & Linters (via none-ls)

| Tool | Role | Languages |
|------|------|-----------|
| `prettier` | Formatter | JS/TS/HTML/CSS/JSON/Markdown |
| `stylua` | Formatter | Lua |
| `eslint_d` | Linter | JavaScript / TypeScript |

Mason auto-installs all of the above on startup.

## Diagnostic Signs

| Level | Icon |
|-------|------|
| Error | ` ` |
| Warn | ` ` |
| Hint | `ﴞ ` |
| Info | ` ` |

## LSP Keymaps

Set automatically for every buffer with an attached LSP server.
See [keymaps.md](keymaps.md#lsp) for the full list.

## Adding a New Server

1. Open `lua/rdani2005/plugins/lsp/mason.lua` and add the server name to `ensure_installed`.
2. Open `lua/rdani2005/plugins/lsp/lspconfig.lua` and call `setup_server("name", { capabilities = capabilities, on_attach = on_attach })`.
3. Run `:MasonToolInstall` or restart Neovim — Mason will install it automatically.
