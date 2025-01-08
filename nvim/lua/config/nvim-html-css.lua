return require("lazy").setup({
    {
        "hrsh7th/nvim-cmp",
        opts = {
            sources = {
                -- other sources
                {
                    name = "html-css",
                      option = {
                        enable_on = {
                          "htmldjango",
                          "html"
                        },                                           -- set the file types you want the plugin to work on
                        file_extensions = { "css", "sass", "less" }, -- set the local filetypes from which you want to derive classes
                        style_sheets = {
                            -- example of remote styles, only css no js for now
                            "C:/Users/cbae/OneDrive - IDEX Corporation/Desktop/Project/gitea/COE-Production/static/material.css",
                        }
                    },
                },
            },
        },
    },
    { "ESSO0428/nvim-html-css",
        dependencies = {
            "nvim-treesitter/nvim-treesitter",
            "nvim-lua/plenary.nvim"
        }
    }
})
