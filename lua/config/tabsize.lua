local augroup = vim.api.nvim_create_augroup("FileTypeSettings", { clear = true })

-- 4 spaces
vim.api.nvim_create_autocmd("FileType", {
  group = augroup,
  pattern = { 
    "python",
    "php",
  },
  callback = function()
    vim.opt_local.tabstop = 4
    vim.opt_local.shiftwidth = 4
    vim.opt_local.expandtab = true
  end,
})

-- 2 spaces
vim.api.nvim_create_autocmd("FileType", {
  group = augroup,
  pattern = {
	  "javascript", 
    "typescript", 
    "javascriptreact", 
    "typescriptreact", 
    "vue", 
    "html", 
    "css", 
    "json", 
    "lua"
  },
  callback = function()
    vim.opt_local.tabstop = 2
    vim.opt_local.shiftwidth = 2
    vim.opt_local.expandtab = true
  end,
})

-- Tabs
vim.api.nvim_create_autocmd("FileType", {
  group = augroup,
  pattern = {
    "go",
  },
  callback = function()
    vim.opt_local.tabstop = 4
    vim.opt_local.shiftwidth = 4
    vim.opt_local.expandtab = false  -- Use actual tabs
  end,
})
