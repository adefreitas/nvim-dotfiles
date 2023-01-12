vim.keymap.set("n", "<leader>u", vim.cmd.UndotreeTogggle)
vim.keymap.set('n', '<C-p>', require('telescope.builtin').git_files, { desc = '[C]hange file in [P]' })
vim.api.nvim_set_keymap("n", "<C-b>", ":NvimTreeFindFileToggle<cr>", { noremap = true, silent = true })
