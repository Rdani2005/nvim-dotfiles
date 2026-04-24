# Keymaps

**Leader key:** `Space`

## General

| Key | Mode | Action |
|-----|------|--------|
| `jk` | Insert | Escape to Normal |
| `<leader>nh` | Normal | Clear search highlights |
| `x` | Normal | Delete char (no register) |
| `<leader>+` | Normal | Increment number |
| `<leader>-` | Normal | Decrement number |
| `<leader>;` | Normal | Append `:` at end of line |
| `J` / `K` | Visual | Move selection down / up |

## Windows & Splits

| Key | Action |
|-----|--------|
| `<leader>sv` | Split vertical |
| `<leader>sh` | Split horizontal |
| `<leader>se` | Equalize split sizes |
| `<leader>sx` | Close split |
| `<leader>sm` | Toggle maximize (vim-maximizer) |

## Tabs

| Key | Action |
|-----|--------|
| `<leader>to` | New tab |
| `<leader>tx` | Close tab |
| `<leader>tn` | Next tab |
| `<leader>tp` | Previous tab |

## File Explorer

| Key | Action |
|-----|--------|
| `<leader>e` | Toggle NvimTree |

## Telescope (Fuzzy Finder)

| Key | Action |
|-----|--------|
| `<leader>ff` | Find files |
| `<leader>fs` | Live grep |
| `<leader>fc` | Grep string under cursor |
| `<leader>fb` | Open buffers |
| `<leader>fh` | Help tags |

Inside Telescope: `<C-k>` / `<C-j>` to navigate, `<C-q>` to send to quickfix.

## LSP

| Key | Action |
|-----|--------|
| `gf` | LSP finder (definitions + references) |
| `gD` | Go to declaration |
| `gd` | Peek definition |
| `gi` | Go to implementation |
| `K` | Hover docs |
| `<leader>ca` | Code actions |
| `<leader>rn` | Rename symbol |
| `<leader>D` | Line diagnostics |
| `<leader>d` | Cursor diagnostics |
| `[d` / `]d` | Prev / Next diagnostic |
| `<leader>o` | Toggle outline |
| `<leader>rs` | Restart LSP |

## TypeScript (only in TS/JS buffers)

| Key | Action |
|-----|--------|
| `<leader>rf` | Rename file + update imports |
| `<leader>oi` | Organize imports |
| `<leader>ru` | Remove unused imports |

## Git

| Key | Action |
|-----|--------|
| `<leader>gp` | Preview hunk |
| `<leader>gt` | Toggle line blame |
| `<leader>gb` | Git blame (fugitive) |
| `<leader>gh` | Git log |
| `<leader>gc` | Git commit |
| `<leader>ga` | Git add all |
| `<leader>gpu` | Git pull |
| `<leader>gph` | Git push |

## Claude Code

| Key | Action |
|-----|--------|
| `<leader>cc` | Toggle Claude Code floating terminal |
