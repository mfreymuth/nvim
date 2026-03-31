# neovim-config

Personal Neovim configuration for Cloud/DevOps engineering and software development.
Based on [kickstart.nvim](https://github.com/nvim-lua/kickstart.nvim).

## Prerequisites

- [Neovim](https://neovim.io/) >= 0.11
- git, make, unzip
- [ripgrep](https://github.com/BurntSushi/ripgrep) (for Telescope grep)
- A [Nerd Font](https://www.nerdfonts.com/) (optional, for icons)

Everything else (LSP servers, formatters, linters, treesitter parsers) is
installed automatically on first launch via Mason and Lazy.

## Languages

LSP, formatting, and linting are pre-configured for:

Go, Lua, C/C++, Terraform, YAML, JSON, Bash, Docker, Markdown

## Structure

```
init.lua                  -- Lazy.nvim bootstrap + module loading
lua/custom/options.lua    -- Vim settings (leader key, UI, search, etc.)
lua/custom/keymaps.lua    -- Keymaps and diagnostic config
lua/custom/autocmds.lua   -- Autocommands
lua/custom/plugins/       -- Plugin specs (auto-imported by lazy.nvim)
lua/kickstart/plugins/    -- Upstream kickstart plugin configs
```

## Install

```bash
git clone git@github.com:mfreymuth/nvim.git ~/.config/nvim
nvim
```

Open Neovim and wait for plugins and tools to install.

## Useful commands

- `:checkhealth` — verify config, LSP, plugins, and external deps
- `:checkhealth lsp` — show attached LSP clients (replaces old `:LspInfo`)
- `:Lazy` — manage plugins
- `:Mason` — manage LSP servers, formatters, and linters
