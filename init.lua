require("rdani2005.plugins-setup") -- plugins setup
-- core
require("rdani2005.core.options")
require("rdani2005.core.keymaps")
-- theme
require("rdani2005.plugins.themes.catppuccin")
require("rdani2005.plugins.themes.monokai")
require("rdani2005.core.colorscheme")
-- plugins
require("rdani2005.plugins.comment")
require("rdani2005.plugins.nvim-tree")
require("rdani2005.plugins.lualine")
require("rdani2005.plugins.telescope")
require("rdani2005.plugins.nvim-cmp")
require("rdani2005.plugins.autopairs")
require("rdani2005.plugins.gitsigns")
require("rdani2005.plugins.treesitter")
require("rdani2005.plugins.maven")
-- plugins lsp
require("rdani2005.plugins.lsp.lspconfig")
require("rdani2005.plugins.lsp.lspsaga")
require("rdani2005.plugins.lsp.mason")
require("rdani2005.plugins.lsp.null-ls")

-- screen plugins
require("rdani2005.plugins.startup_screen")
