-- return {
--   {
--     "ellisonleao/gruvbox.nvim",
--     priority = 1000, -- Load before other plugins
--     config = function()
--       require("gruvbox").setup({
--         terminal_colors = true,
--         undercurl = true,
--         underline = true,
--         bold = true,
--         italic = {
--           strings = false,
--           emphasis = false,
--           comments = false,
--           operators = false,
--           folds = false,
--         },
--         strikethrough = true,
--         invert_selection = false,
--         invert_signs = false,
--         invert_tabline = false,
--         invert_intend_guides = false,
--         inverse = true,
--         contrast = "", -- can be "hard", "soft", or empty string
--         palette_overrides = {},
--         overrides = {},
--         dim_inactive = false,
--         transparent_mode = true,
--       })
--       -- Set the colorscheme after setup
--       vim.cmd("colorscheme gruvbox")
--     end,
--   },
--   {
--     "LazyVim/LazyVim",
--     opts = {
--       colorscheme = "gruvbox",
--     },
--   },
-- }

-- return {
--
--   {
--     "catppuccin/nvim",
--     name = "catppuccin",
--     priority = 1000, -- Load before other plugins
--     config = function()
--       require("catppuccin").setup({
--         flavour = "mocha", -- Options: latte, frappe, macchiato, mocha
--         transparent_background = true,
--         term_colors = true,
--         no_italic = true, -- Disable all italics
--         integrations = {
--           treesitter = true,
--           native_lsp = {
--             enabled = true,
--             underlines = {
--               errors = { "undercurl" },
--               hints = { "undercurl" },
--               warnings = { "undercurl" },
--               information = { "undercurl" },
--             },
--           },
--           telescope = true,
--           gitsigns = true,
--           cmp = true,
--           nvimtree = true,
--           dashboard = true,
--           markdown = true,
--           notify = true,
--           which_key = true,
--         },
--       })
--       -- Set colorscheme
--       vim.cmd("colorscheme catppuccin-mocha")
--     end,
--   },
--   {
--     "LazyVim/LazyVim",
--     opts = {
--       colorscheme = "catppuccin-mocha",
--     },
--   },
-- }

-- return {
--
--   {
--     "navarasu/onedark.nvim",
--     name = "onedark",
--     priority = 1000, -- Load before other plugins
--     config = function()
--       require("onedark").setup({
--         style = "darker", -- Options: dark, darker, cool, deep, warm, warmer
--         transparent = true, -- Set transparent background
--         term_colors = true,
--         code_style = {
--           comments = "none",
--           keywords = "none",
--           functions = "none",
--           strings = "none",
--           variables = "none",
--         },
--         integrations = {
--           treesitter = true,
--           native_lsp = {
--             enabled = true,
--             underlines = {
--               errors = { "undercurl" },
--               hints = { "undercurl" },
--               warnings = { "undercurl" },
--               information = { "undercurl" },
--             },
--           },
--           telescope = true,
--           gitsigns = true,
--           cmp = true,
--           nvimtree = true,
--           dashboard = true,
--           markdown = true,
--           notify = true,
--           which_key = true,
--         },
--       })
--       -- Apply the colorscheme
--       require("onedark").load()
--     end,
--   },
--   {
--     "LazyVim/LazyVim",
--     opts = {
--       colorscheme = "onedark",
--     },
--   },
-- }
--
--
return {
  "NTBBloodbath/doom-one.nvim",
  setup = function()
    -- Add color to cursor
    vim.g.doom_one_cursor_coloring = false
    -- Set :terminal colors
    vim.g.doom_one_terminal_colors = true
    -- Enable italic comments
    vim.g.doom_one_italic_comments = false
    -- Enable TS support
    vim.g.doom_one_enable_treesitter = true
    -- Color whole diagnostic text or only underline
    vim.g.doom_one_diagnostics_text_color = false
    -- Enable transparent background
    vim.g.doom_one_transparent_background = false

    -- Pumblend transparency
    vim.g.doom_one_pumblend_enable = false
    vim.g.doom_one_pumblend_transparency = 20

    -- Plugins integration
    vim.g.doom_one_plugin_neorg = true
    vim.g.doom_one_plugin_barbar = false
    vim.g.doom_one_plugin_telescope = false
    vim.g.doom_one_plugin_neogit = true
    vim.g.doom_one_plugin_nvim_tree = true
    vim.g.doom_one_plugin_dashboard = true
    vim.g.doom_one_plugin_startify = true
    vim.g.doom_one_plugin_whichkey = true
    vim.g.doom_one_plugin_indent_blankline = true
    vim.g.doom_one_plugin_vim_illuminate = true
    vim.g.doom_one_plugin_lspsaga = false
  end,
  config = function()
    vim.cmd("colorscheme doom-one")
  end,
}
