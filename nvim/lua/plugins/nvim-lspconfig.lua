return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        html ={ filetypes = {'html','templ','htmldjango'} },
      }
    },
  },

  {
    "NvChad/nvim-colorizer.lua",
    opts = {
      user_default_options = {
        htmldjango = true,
        tailwind = true,
        css = true,
        names = true,
        RGB = true,
        RGBA = true,
      },
    },
  },
}
