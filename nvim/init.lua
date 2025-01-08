-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1
-- Check if 'pwsh' is executable and set the shell accordingly
if vim.fn.executable('pwsh') == 1 then
  vim.o.shell = 'pwsh'
else
  vim.o.shell = 'powershell'
end
-- Setting shell command flags
vim.o.shellcmdflag = '-NoLogo -ExecutionPolicy RemoteSigned -Command [Console]::InputEncoding=[Console]::OutputEncoding=[System.Text.UTF8Encoding]::new();$PSDefaultParameterValues[\'Out-File:Encoding\']=\'utf8\';'

-- Setting shell redirection
vim.o.shellredir = '2>&1 | %{ "$_" } | Out-File %s; exit $LastExitCode'

-- Setting shell pipe
vim.o.shellpipe = '2>&1 | %{ "$_" } | Tee-Object %s; exit $LastExitCode'

-- Setting shell quote options
vim.o.shellquote = ''
vim.o.shellxquote = ''

-- optionally enable 24-bit colour
vim.opt.termguicolors = true
local setup, nvimtree = pcall(require, "nvim-tree")
if not setup then
  return
end

-- vim.cmd([[
-- nnoremap - :NvimTreeToggle<CR>
-- ]])

local keymap = vim.keymap -- for conciseness
keymap.set("n", "<leader>e", ":NvimTreeToggle<CR>", { silent = true, desc = "Open nvim-tree" }) -- toggle file explorer

-- vim.opt.foldmethod = "expr"
-- vim.opt.foldexpr = "nvim_treesitter#foldexpr()"
-- vim.opt.foldenable = false --                  " Disable folding at startup.

vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1
-- vim.g.nvim_tree_respect_buf_cwd = 1

vim.opt.termguicolors = true

local HEIGHT_RATIO = 0.8 -- You can change this
local WIDTH_RATIO = 0.5 -- You can change this too

nvimtree.setup({
  -- quit_on_open = true,
  -- indent_markers = true,
  -- highlight_opened_files = true,
  -- add_trailing = true,
  -- icon_padding = " ",
  disable_netrw = true,
  hijack_netrw = true,
  -- respect_buf_cwd = true,
  -- update_focused_file = {
  -- enable = true,
  -- update_cwd = true,
  -- },
  sync_root_with_cwd = true,
  view = {
    relativenumber = true,
    float = {
      enable = true,
      open_win_config = function()
        local screen_w = vim.opt.columns:get()
        local screen_h = vim.opt.lines:get() - vim.opt.cmdheight:get()
        local window_w = screen_w * WIDTH_RATIO
        local window_h = screen_h * HEIGHT_RATIO
        local window_w_int = math.floor(window_w)
        local window_h_int = math.floor(window_h)
        local center_x = (screen_w - window_w) / 2
        local center_y = ((vim.opt.lines:get() - window_h) / 2) - vim.opt.cmdheight:get()
        return {
          border = "rounded",
          relative = "editor",
          row = center_y,
          col = center_x,
          width = window_w_int,
          height = window_h_int,
        }
      end,
    },
    width = function()
      return math.floor(vim.opt.columns:get() * WIDTH_RATIO)
    end,
  },
  -- filters = {
  --   custom = { "^.git$" },
  -- },
  -- renderer = {
  --   indent_width = 1,
  -- },
})

-- vim.api.nvim_exec([[autocmd FileType htmldjango setlocal filetype = html]], false)
vim.cmd([[autocmd Bufread, BufNewFile *.html set filetype=html]])

