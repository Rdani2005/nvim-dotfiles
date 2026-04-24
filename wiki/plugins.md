# Plugins

Managed by [packer.nvim](https://github.com/wbthomason/packer.nvim).
Config lives in `lua/rdani2005/plugins-setup.lua`.

Run `:PackerSync` to install/update/clean plugins.

## UI & Themes

| Plugin | Purpose | Config |
|--------|---------|--------|
| catppuccin/nvim | Active theme (Macchiato flavor) | `plugins/themes/catppuccin.lua` |
| nvim-lualine/lualine.nvim | Status bar | `plugins/lualine.lua` |
| nvim-tree/nvim-tree.lua | File explorer sidebar (`<leader>e`) | `plugins/nvim-tree.lua` |
| nvim-tree/nvim-web-devicons | File icons | — |
| startup-nvim/startup.nvim | Welcome screen (rocket theme) | `plugins/startup_screen.lua` |

## Navigation

| Plugin | Purpose | Config |
|--------|---------|--------|
| nvim-telescope/telescope.nvim | Fuzzy finder | `plugins/telescope.lua` |
| telescope-fzf-native.nvim | FZF sorting for telescope | — |
| christoomey/vim-tmux-navigator | Seamless tmux ↔ nvim navigation | — |
| szw/vim-maximizer | Maximize/restore window | — |

## Editing

| Plugin | Purpose | Config |
|--------|---------|--------|
| numToStr/Comment.nvim | `gcc` / `gc` to comment lines | `plugins/comment.lua` |
| windwp/nvim-autopairs | Auto-close brackets, quotes | `plugins/autopairs.lua` |
| windwp/nvim-ts-autotag | Auto-close HTML/JSX tags | — |
| tpope/vim-surround | Surround text with delimiters | — |
| vim-scripts/ReplaceWithRegister | Replace text with register content | — |

## Completion & Snippets

| Plugin | Purpose |
|--------|---------|
| hrsh7th/nvim-cmp | Completion engine |
| hrsh7th/cmp-nvim-lsp | LSP completions |
| hrsh7th/cmp-buffer | Buffer word completions |
| hrsh7th/cmp-path | File path completions |
| L3MON4D3/LuaSnip | Snippet engine |
| saadparwaiz1/cmp_luasnip | LuaSnip source for cmp |
| rafamadriz/friendly-snippets | Pre-made snippet collection |
| avneesh0612/react-nextjs-snippets | React / Next.js snippets |
| dsznajder/vscode-es7-javascript-react-snippets | ES7+ / React snippets |

## Git

| Plugin | Purpose | Config |
|--------|---------|--------|
| lewis6991/gitsigns.nvim | Inline git diff indicators | `plugins/gitsigns.lua` |
| tpope/vim-fugitive | Full git integration | keymaps in `core/keymaps.lua` |

## Syntax & Parsing

| Plugin | Purpose | Config |
|--------|---------|--------|
| nvim-treesitter/nvim-treesitter | Syntax highlighting + indentation | `plugins/treesitter.lua` |
| gleam-lang/gleam.vim | Gleam language support | `plugins/gleam.lua` |

## Language / Framework

| Plugin | Purpose |
|--------|---------|
| pmizio/typescript-tools.nvim | TypeScript LSP (rename file, org imports) |
| joeveiga/ng.nvim | Angular support |
| eatgrass/maven.nvim | Java Maven build tool |

## Utilities

| Plugin | Purpose |
|--------|---------|
| nvim-lua/plenary.nvim | Lua utility library (dependency) |
| ThePrimeagen/vim-be-good | Vim practice game (`:VimBeGood`) |
| rdani2005/claude-term | Claude Code floating terminal |
