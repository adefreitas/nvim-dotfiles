vim.opt.relativenumber = true;

vim.opt.background = "dark"
--[[  tabs ]]
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.smartindent = true
vim.opt.swapfile = false;
vim.opt.backup = false;
vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
vim.opt.undofile = true;

vim.opt.incsearch = true

vim.opt.scrolloff = 10
vim.opt.signcolumn = "yes"

vim.cmd("colorscheme oxocarbon")
require("nvim-autopairs").setup()
require('lualine').setup {
    options = {
      icons_enabled = false,
      theme = 'oxocarbon',
      component_separators = '|',
      section_separators = '',
    },
  }


vim.cmd("highlight Normal guibg=NONE")
vim.cmd("highlight NonText guibg=NONE")
vim.cmd("highlight SignColumn guibg=NONE")
vim.keymap.set("n", "<leader>u", vim.cmd.UndotreeToggle)
vim.api.nvim_set_keymap("n", "<C-b>", ":NERDTreeFind<cr>", { noremap = true, silent = true })
