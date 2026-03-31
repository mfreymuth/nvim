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
init.lua                  -- Main configuration
lua/kickstart/plugins/    -- Kickstart plugin configs
lua/custom/plugins/       -- Personal plugin additions
```

## Install

```bash
git clone <this-repo> ~/.config/nvim
nvim
```

Open Neovim and wait for plugins and tools to install. Run `:checkhealth` to
verify everything is working.
