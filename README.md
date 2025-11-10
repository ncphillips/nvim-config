# Neovim Configuration

A modern, feature-rich Neovim configuration optimized for full-stack web development with a focus on Laravel/PHP and JavaScript/TypeScript/Vue development.

## Features

- **Fast Plugin Management**: [lazy.nvim](https://github.com/folke/lazy.nvim) for lazy-loading and fast startup
- **Modern LSP Support**: Full Language Server Protocol integration with auto-completion and diagnostics
- **Laravel Development**: Extensive Laravel framework support with dedicated tooling
- **Fuzzy Finding**: Fast file and text search with fzf-lua
- **AI-Assisted Coding**: GitHub Copilot integration
- **Test Runner**: Integrated test framework with neotest and Pest adapter
- **Code Refactoring**: Built-in refactoring tools for common operations
- **Git Integration**: Enhanced diff viewing and git information in status line
- **macOS Optimized**: Keybindings designed for Command key usage
- **Beautiful UI**: OneDark theme with informative status line

## Prerequisites

- Neovim >= 0.9.0
- [Nerd Font](https://www.nerdfonts.com/) (for file icons)
- Node.js (for LSP servers)
- Git
- [fzf](https://github.com/junegunn/fzf) (for fuzzy finding)
- [ripgrep](https://github.com/BurntSushi/ripgrep) (for live grep)

## Installation

1. **Backup existing configuration** (if any):
   ```bash
   mv ~/.config/nvim ~/.config/nvim.backup
   ```

2. **Clone this repository**:
   ```bash
   git clone <your-repo-url> ~/.config/nvim
   ```

3. **Launch Neovim**:
   ```bash
   nvim
   ```
   lazy.nvim will automatically install itself and all plugins on first launch.

4. **Install LSP servers**:
   Open Neovim and run `:Mason` to verify LSP server installations.

## Plugin List

### Core Functionality
| Plugin | Purpose |
| ------ | ------- |
| [lazy.nvim](https://github.com/folke/lazy.nvim) | Plugin manager with lazy loading |
| [mason.nvim](https://github.com/williamboman/mason.nvim) | External tool installer for LSP, formatters, linters |
| [nvim-lspconfig](https://github.com/neovim/nvim-lspconfig) | LSP configuration for Neovim |

### UI & Navigation
| Plugin | Purpose |
| ------ | ------- |
| [onedark.nvim](https://github.com/navarasu/onedark.nvim) | OneDark color scheme |
| [lualine.nvim](https://github.com/nvim-lualine/lualine.nvim) | Status line and buffer tabs |
| [nvim-tree.lua](https://github.com/nvim-tree/nvim-tree.lua) | File explorer sidebar |
| [fzf-lua](https://github.com/ibhagwan/fzf-lua) | Fuzzy finder for files, commands, and text |
| [which-key.nvim](https://github.com/folke/which-key.nvim) | Keybinding helper popup |
| [nvim-web-devicons](https://github.com/nvim-tree/nvim-web-devicons) | File type icons |

### Language Support
| Plugin | Purpose |
| ------ | ------- |
| [nvim-treesitter](https://github.com/nvim-treesitter/nvim-treesitter) | Syntax highlighting and code parsing |
| [mason-lspconfig.nvim](https://github.com/williamboman/mason-lspconfig.nvim) | Bridge between mason and lspconfig |

### Development Tools
| Plugin | Purpose |
| ------ | ------- |
| [laravel.nvim](https://github.com/adalessa/laravel.nvim) | Laravel framework integration |
| [neotest](https://github.com/nvim-neotest/neotest) | Test runner framework |
| [neotest-pest](https://github.com/V13Axel/neotest-pest) | Pest test adapter for neotest |
| [refactoring.nvim](https://github.com/ThePrimeagen/refactoring.nvim) | Code refactoring tools |
| [diffview.nvim](https://github.com/sindrets/diffview.nvim) | Git diff viewer |
| [copilot.vim](https://github.com/github/copilot.vim) | GitHub Copilot AI assistant |

### Supporting Libraries
| Plugin | Purpose |
| ------ | ------- |
| [plenary.nvim](https://github.com/nvim-lua/plenary.nvim) | Lua utility functions |
| [nvim-nio](https://github.com/nvim-neotest/nvim-nio) | Async I/O library |
| [nui.nvim](https://github.com/MunifTanjim/nui.nvim) | UI component library |
| [vim-dotenv](https://github.com/tpope/vim-dotenv) | .env file support |

## Key Bindings

### Leader Keys
- **Leader**: `<Space>`
- **Local Leader**: `<Backslash>`

### Global Shortcuts (macOS focused)
| Key | Action | Description |
| --- | ------ | ----------- |
| `Cmd+S` | Save | Save current file |
| `Cmd+P` | Files | Fuzzy find files |
| `Cmd+Shift+P` | Commands | Command palette |
| `Cmd+F` | Find | Search in current file |
| `Cmd+Shift+F` | Find in Files | Search across all files |
| `Cmd+E` | Toggle Explorer | Show/hide file tree |

### LSP (when attached to buffer)
| Key | Action | Description |
| --- | ------ | ----------- |
| `gd` | Go to Definition | Jump to definition |
| `gr` | References | Find all references |
| `gi` | Implementation | Go to implementation |
| `gy` | Type Definition | Go to type definition |
| `K` | Hover | Show hover information |
| `gD` | Declaration | Go to declaration |
| `Ctrl+K` | Signature Help | Show signature help |
| `<leader>rn` | Rename | Rename symbol |
| `<leader>ca` | Code Actions | Show code actions |
| `<leader>ds` | Document Symbols | List document symbols |
| `<leader>ws` | Workspace Symbols | List workspace symbols |
| `<leader>d` | Document Diagnostics | Show document diagnostics |
| `<leader>D` | Workspace Diagnostics | Show workspace diagnostics |

### Testing
| Key | Action | Description |
| --- | ------ | ----------- |
| `<leader>tn` | Run Test | Run test at cursor |
| `<leader>tf` | Run File Tests | Run all tests in file |

### Refactoring
| Key | Action |
| --- | ------ |
| `Cmd+Option+V` | Extract Variable |
| `Cmd+Option+N` | Inline Variable |
| `Cmd+Option+M` | Extract Function |
| `Cmd+Option+I` | Inline Function |

### Laravel
| Key | Action | Description |
| --- | ------ | ----------- |
| `<leader>ll` | Laravel Picker | Main Laravel menu |
| `Ctrl+G` | View Finder | Find views |
| `<leader>la` | Artisan | Artisan commands |
| `<leader>lt` | Actions | Quick actions |
| `<leader>lr` | Routes | Browse routes |
| `<leader>lh` | Documentation | Laravel docs |
| `<leader>lm` | Make | Laravel make commands |
| `<leader>lc` | Commands | Custom commands |
| `<leader>lo` | Resources | Browse resources |
| `<leader>lp` | Command Center | Command palette |
| `gf` | Go to Resource | Context-aware navigation |

### Which-Key
| Key | Action |
| --- | ------ |
| `<leader>?` | Show Keymaps | Display buffer keymaps |

## Configuration Structure

```
~/.config/nvim/
├── init.lua                    # Main entry point
├── lazy-lock.json              # Plugin versions lock file
├── .neoconf.json               # LSP settings
└── lua/
    ├── config/
    │   ├── lazy.lua           # Plugin manager setup
    │   └── tabsize.lua        # Indentation rules
    └── plugins/               # Plugin configurations
        ├── lsp.lua           # LSP setup
        ├── mason.lua         # Tool installer
        ├── treesitter.lua    # Syntax highlighting
        ├── theme.lua         # Color scheme
        ├── fzf-lua.lua       # Fuzzy finder
        ├── file-explorer.lua # File tree
        ├── status.lua        # Status line
        ├── which-key.lua     # Keybinding help
        ├── github-copilot.lua # AI assistant
        ├── testing.lua       # Test runner
        ├── refactoring.lua   # Refactoring tools
        ├── gitdiff.lua       # Git diff viewer
        └── laravel.lua       # Laravel support
```

## Language Support

### LSP Servers
- **PHP**: Intelephense (with license key configured)
- **TypeScript/JavaScript**: tsserver
- **Vue**: Volar

### Treesitter Parsers
Bash, CSS, Dockerfile, Dot, Git commit messages, Gitignore, HTML, JavaScript, JSDoc, JSON, Markdown, PHP, PHPDoc, TypeScript, Vue, YAML

### Indentation Settings
- **4 spaces**: Python, PHP
- **2 spaces**: JavaScript, TypeScript, JSX, TSX, Vue, HTML, CSS, JSON, Lua
- **Tabs**: Go (no expansion)

## Customization

### Adding New Plugins
Create a new file in `lua/plugins/` directory:

```lua
-- lua/plugins/my-plugin.lua
return {
  "author/plugin-name",
  config = function()
    -- Plugin configuration here
  end
}
```

lazy.nvim will automatically detect and load it.

### Modifying Keybindings
Edit keybindings in `init.lua` or within the specific plugin configuration file in `lua/plugins/`.

### Changing Theme
Edit `lua/plugins/theme.lua` to use a different color scheme or modify OneDark settings.

### Adding LSP Servers
Add servers to the `ensure_installed` table in `lua/plugins/lsp.lua`:

```lua
ensure_installed = { "your_server_here" }
```

### Modifying Indentation
Edit `lua/config/tabsize.lua` to add or modify file-type specific indentation rules.

## Tips

- Press `<leader>?` to see all available keybindings
- Use `:Lazy` to manage plugins (update, clean, etc.)
- Use `:Mason` to manage LSP servers and tools
- Use `:checkhealth` to diagnose issues
- Press `Cmd+P` for quick file navigation
- Use `:LaravelInfo` for Laravel project information

## Troubleshooting

### LSP not working
1. Run `:LspInfo` to check server status
2. Run `:Mason` to verify server installation
3. Check `:checkhealth mason` for issues

### Plugins not loading
1. Run `:Lazy` to check plugin status
2. Run `:Lazy sync` to reinstall plugins
3. Delete `lazy-lock.json` and restart Neovim

### Icons not showing
Install a [Nerd Font](https://www.nerdfonts.com/) and configure your terminal to use it.

## License

This configuration is provided as-is for personal use. Individual plugins have their own licenses.
