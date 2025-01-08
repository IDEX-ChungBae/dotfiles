return {
  {
    "rose-pine/neovim",
  },
  {
    "catppuccin/nvim",
  },
  -- {
  --   "rebelot/kanagawa.nvim",
  -- },
  -- {
  --   "edeneast/nightfox.nvim",
  -- },
  -- {
  --   "shaunsingh/nord.nvim",
  -- },
  -- {
  --   "shaunsingh/moonlight.nvim",
  -- },
  -- {
  --   "tiagovla/tokyodark.nvim",
  -- },
  {
    "oxfist/night-owl.nvim",
  },
  {
    "folke/tokyonight.nvim",
    priority = 1000,
    config = function()
      local bg = "#011628"
      local bg_dark = "#011423"
      local bg_highlight = "#143652"
      local bg_search = "#0A64AC"
      local bg_visual = "#275378"
      local fg = "#CBE0F0"
      local fg_dark = "B4D0E9"
      local fg_gutter = "#627E97"
      local border = "#547998"
      require("tokyonight").setup({
        style = "night",
        dim_inactive = true,
        lualine_bold = true,
        -- on_colors = function(colors)
        --   colors.bg = bg
        --   colors.bg_dark = bg_dark
        --   colors.bg_float = bg_dark
        --   colors.bg_highlight = bg_highlight
        --   colors.bg_popup = bg_dark
        --   colors.bg_search = bg_search
        --   colors.bg_sidebar = bg_dark
        --   colors.bg_statusline = bg_dark
        --   colors.bg_visual = bg_visual
        --   colors.border = border
        --   colors.fg = fg
        --   colors.fg_dark = fg_dark
        --   colors.fg_float = fg
        --   colors.fg_gutter = fg_gutter
        --   colors.fg_sidebar = fg_dark
        -- end
      })
    end
      },
  -- {
  --   "NLKNguyen/papercolor-theme",
  -- },
  -- {
  --   "morhetz/gruvbox",
  -- },
  -- {
  --   "craftzdog/solarized-osaka.nvim",
  -- },
  -- {
  --   "embark-theme/vim",
  -- },
  -- {
  --   "zootedb0t/citruszest.nvim",
  -- },
  -- {
  --   "fenetikm/falcon",
  -- },
  {
    "LazyVim/LazyVim",
    opts = {
      -- colorscheme = "rose-pine-main",
      colorscheme = "tokyonight",
    },
  }
}
