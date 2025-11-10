return {
  "neovim/nvim-lspconfig",
  dependencies = {
    "williamboman/mason.nvim",
    "williamboman/mason-lspconfig.nvim",
  },
  config = function()
    -- Setup mason-lspconfig
    require("mason-lspconfig").setup({
      ensure_installed = {
        "intelephense", -- PHP language server
      },
      automatic_installation = true,
    })

    -- Configure Intelephense
    vim.lsp.config('intelephense', {
      settings = {
        on_attach = on_attach,
        intelephense = {
          files = {
            maxSize = 1000000,
          },
          licenceKey = "0057CF0QD2TEA3E",
        },
      },
    })

    vim.api.nvim_create_autocmd('LspAttach', {
      group = vim.api.nvim_create_augroup('UserLspConfig', {}),
      callback = function(ev)
        -- Buffer local mappings
        local opts = { buffer = ev.buf }
        -- Get the client to check capabilities

       -- Use fzf-lua for LSP navigation
        vim.keymap.set('n', 'gd', require('fzf-lua').lsp_definitions, opts)
        vim.keymap.set('n', 'gr', require('fzf-lua').lsp_references, opts)
        vim.keymap.set('n', 'gi', require('fzf-lua').lsp_implementations, opts)
        vim.keymap.set('n', 'gy', require('fzf-lua').lsp_typedefs, opts)
        
        -- Other LSP commands with fzf-lua
        vim.keymap.set('n', '<leader>ca', require('fzf-lua').lsp_code_actions, opts)
        vim.keymap.set('n', '<leader>ds', require('fzf-lua').lsp_document_symbols, opts)
        vim.keymap.set('n', '<leader>ws', require('fzf-lua').lsp_workspace_symbols, opts)
        vim.keymap.set('n', '<leader>d', require('fzf-lua').lsp_document_diagnostics, opts)
        vim.keymap.set('n', '<leader>D', require('fzf-lua').lsp_workspace_diagnostics, opts)
        

        -- These usually work for most servers
        vim.keymap.set('n', 'K', vim.lsp.buf.hover, opts)
        vim.keymap.set('n', 'gD', vim.lsp.buf.declaration, opts)
        vim.keymap.set('n', '<C-k>', vim.lsp.buf.signature_help, opts)
        vim.keymap.set('n', '<leader>rn', vim.lsp.buf.rename, opts)
        vim.keymap.set('n', '<leader>ca', vim.lsp.buf.code_action, opts)
      end,
    })
  end,
}
