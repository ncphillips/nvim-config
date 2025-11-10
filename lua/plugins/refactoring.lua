return  {
  "ThePrimeagen/refactoring.nvim",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-treesitter/nvim-treesitter",
  },
  lazy = false,
  opts = {},
  config = function(_, opts)
    require("refactoring").setup(opts)

    vim.keymap.set({"n", "x"}, "<D-A-v>", function() return require('refactoring').refactor('Extract Variable') end, { expr = true })
    vim.keymap.set({"n", "x"}, "<D-A-n>", function() return require('refactoring').refactor('Inline Variable') end, { expr = true })

    vim.keymap.set({"n", "x"}, "<D-A-m>", function() return require('refactoring').refactor('Extract Function') end, { expr = true })
    vim.keymap.set({"n", "x"}, "<D-A-i>", function() return require('refactoring').refactor('Inline Function') end, { expr = true })
  end,
}
