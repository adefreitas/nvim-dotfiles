vim.opt.relativenumber = true;

vim.opt.background = "dark"
vim.cmd("colorscheme oxocarbon")
require("nvim-autopairs").setup()
vim.cmd("highlight Normal guibg=NONE")
vim.cmd("highlight NonText guibg=NONE")
vim.cmd("highlight SignColumn guibg=NONE")
