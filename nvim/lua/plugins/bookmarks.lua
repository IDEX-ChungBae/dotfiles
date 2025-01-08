return {
  {
    'tomasky/bookmarks.nvim',
    -- after = "telescope.nvim",
    event = "VimEnter",
    config = function()
      require('bookmarks').setup({
        -- sign_priority = 8,  --set bookmark sign priority to cover other sign
        save_file = vim.fn.expand "$HOME/.bookmarks", -- bookmarks save file path
        keywords =  {
          ["@t"] = "󰃀 ", -- mark annotation startswith @t ,signs this icon as `Todo`
          ["@w"] = "", -- mark annotation startswith @w ,signs this icon as `Warn`
          ["@f"] = "󰢚", -- mark annotation startswith @f ,signs this icon as `Fix`
          ["@n"] = "󰭺", -- mark annotation startswith @n ,signs this icon as `Note`
          ["@i"] = "󱈸", -- mark annotation startswith @bm , signs this icon as 'important!'
          ["@c"] = "󰣐", -- mark annotation startswith @bm , signs this icon as 'important!'
        },
        on_attach = function(bufnr)
          local bm = require "bookmarks"
          local map = vim.keymap.set
          map("n","mm",bm.bookmark_toggle, {desc = "[M]ake/Toggle 🔖BookMarks🔖"}) -- add or remove bookmark at current line
          map("n","mi",bm.bookmark_ann, {desc = "Insert icon, [t󰃀, w, f󰢚, n󰭺, i󱈸, c󰣐]"}) -- add or edit mark annotation at current line
          map("n","mc",bm.bookmark_clean, {desc = "💀Clean💀 all BookMarks"}) -- clean all marks in local buffer
          map("n","mn",bm.bookmark_next, {desc = "Jump to [N]ext BookMarks"}) -- jump to next mark in local buffer
          map("n","mp",bm.bookmark_prev, {desc = "Jump to [P]rev BookMarks"}) -- jump to previous mark in local buffer
          map("n","ml",bm.bookmark_list, {desc = "Show BookMarked file list"}) -- show marked file list in quickfix window
        end
      })
    end
  }
}
