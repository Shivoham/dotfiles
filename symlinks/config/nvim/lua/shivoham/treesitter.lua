require('nvim-treesitter.configs').setup {
  ensure_installed = {
      "css",
      "vimdoc",
      "vim",
      "html",
      "javascript",
      "lua",
      "php",
      "python",
      "rust",
      "toml",
      "typescript",
      "yaml",
  },
  auto_install = true,
  highlight = {
    enable = true,
    additional_vim_regex_highlighting=false,
  },
  indent = { enable = true }, 
  rainbow = {
    enable = true,
    extended_mode = true,
    max_file_lines = nil,
  }
}

vim.wo.foldmethod = 'expr'
vim.wo.foldexpr = 'nvim_treesitter#foldexpr()'
