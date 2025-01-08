-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
-- Add any additional autocmds here
-- Disable autoformat for python, html files
vim.api.nvim_create_autocmd({ "FileType" }, {
  pattern = { "*" },
  callback = function()
    vim.b.autoformat = false
  end,
})

vim.api.nvim_create_autocmd("Bufenter", {
  callback = function()
    vim.cmd([[nnoremap - :Gitsigns toggle_current_line_blame<CR>]])
  end,
})
-- autocmd BufEnter * Gitsigns toggle_current_line_blame
