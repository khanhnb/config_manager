function SetTransparentColorscheme(color)
  color = color or "rose-pine-moon"
  vim.cmd.colorscheme(color)

  vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
  vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
  -- vim.api.nvim_set_hl(0, "LspInlayHint", { bg = "none" })
end

return {
  {
    "folke/tokyonight.nvim",
    config = function()
      require("tokyonight").setup({
        -- your configuration comes here
        -- or leave it empty to use the default settings
        style = "night",        -- The theme comes in three styles, `storm`, `moon`, a darker variant `night` and `day`
        transparent = false,    -- Enable this to disable setting the background color
        terminal_colors = true, -- Configure the colors used when opening a `:terminal` in Neovim
        styles = {
          -- Style to be applied to different syntax groups
          -- Value is any valid attr-list value for `:help nvim_set_hl`
          comments = { italic = false },
          keywords = { italic = false },
          -- Background styles. Can be "dark", "transparent" or "normal"
          sidebars = "dark", -- style for sidebars, see below
          floats = "dark",   -- style for floating windows
          -- floats = "transparent", -- style for floating windows
          -- sidebars = "transparent", -- style for sidebars, see below
        },
      })
      -- vim.cmd.colorscheme("tokyonight")
    end
  },
  {
    "rose-pine/neovim",
    name = "rose-pine",
    config = function()
      require('rose-pine').setup({
        disable_background = true,
        -- disable_background = false,
        styles = {
          italic = false,
        },
      })
      -- vim.cmd.colorscheme("rose-pine")
    end
  },
  {
    "tjdevries/colorbuddy.nvim",
    config = function()
      vim.cmd.colorscheme("gruvbuddy")
      -- SetTransparentColorscheme("gruvbuddy")
    end
  },
  -- {
  --   "ellisonleao/gruvbox.nvim",
  --   name = "gruvbox",
  --   config = function()
  --     require("gruvbox").setup({
  --       terminal_colors = true, -- add neovim terminal colors
  --       undercurl = true,
  --       underline = false,
  --       bold = true,
  --       italic = {
  --         strings = false,
  --         emphasis = false,
  --         comments = false,
  --         operators = false,
  --         folds = false,
  --       },
  --       strikethrough = true,
  --       invert_selection = false,
  --       invert_signs = false,
  --       invert_tabline = false,
  --       invert_intend_guides = false,
  --       inverse = true, -- invert background for search, diffs, statuslines and errors
  --       contrast = "",  -- can be "hard", "soft" or empty string
  --       palette_overrides = {},
  --       overrides = {},
  --       dim_inactive = false,
  --       transparent_mode = false,
  --     })
  --     -- vim.cmd.colorscheme("gruvbox")
  --
  --     -- SetTransparentColorscheme("gruvbox")
  --   end,
  -- },
}
