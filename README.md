# rdani2005's Neovim Config

A personal Neovim setup built around web/TypeScript development with Java and Gleam support.
Uses **Packer** for plugin management and **Catppuccin Macchiato** as the theme.

## Structure

```
nvim/
├── init.lua                        # Entry point — loads all modules
└── lua/
    └── rdani2005/
        ├── plugins-setup.lua       # Packer plugin list
        ├── core/
        │   ├── options.lua         # Editor settings
        │   ├── keymaps.lua         # Global keymaps
        │   └── colorscheme.lua     # Theme activation
        └── plugins/
            ├── lsp/                # Language server setup
            ├── themes/             # Theme configs
            ├── claude-term.lua     # Claude Code floating terminal
            └── ...                 # One file per plugin
```

## Quick Reference

| Category | Docs |
|----------|------|
| Keymaps | [wiki/keymaps.md](wiki/keymaps.md) |
| Plugins | [wiki/plugins.md](wiki/plugins.md) |
| LSP & Formatting | [wiki/lsp.md](wiki/lsp.md) |

## Requirements

- Neovim >= 0.9
- `git`, `make`, `node`, `npm` (for mason/LSPs)
- A [Nerd Font](https://www.nerdfonts.com/) in your terminal
- `ripgrep` (for Telescope live grep)

## Install

```bash
git clone <your-repo> ~/.config/nvim
nvim   # Packer auto-installs on first launch
```

Run `:PackerSync` if plugins don't install automatically.
