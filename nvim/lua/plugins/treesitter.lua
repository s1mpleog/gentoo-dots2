return {
  "nvim-treesitter/nvim-treesitter",
  build = ":TSUpdate",
  config = function()
    local config = require("nvim-treesitter.configs")
    config.setup({
      auto_install = true,
      ensure_installed = {
        "rust",
        "go",
        "zig",
        "c",
        "markdown_inline",
        "cpp",
        "css", -- CSS
        "javascript", -- JavaScript
        "python", -- Python
        "sql", -- SQL
        "html", -- HTML
        "markdown", -- Markdown
        "lua", -- Lua
        "bash", -- Bash
      },
      highlight = { enable = true },
      indent = { enable = true },
    })
  end,
}
