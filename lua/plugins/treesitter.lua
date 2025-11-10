return {
  "nvim-treesitter/nvim-treesitter",
  branch = 'master',
  lazy = false,
  build = ":TSUpdate",
  config = function () 
    require'nvim-treesitter.configs'.setup {
      ensure_installed = {
        "bash",
        "css",
        "dockerfile",
        "dot",
        "gitcommit",
        "gitignore",
        "html",
        "javascript",
        "jsdoc",
        "json",
        "markdown",
        "php",
        "phpdoc",
        "typescript",
        "vue",
        "yaml",
      }
    }
  end
}
