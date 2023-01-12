return function(use)
  use { "windwp/nvim-autopairs" }
  use { "mbbill/undotree" }
  use { 'prettier/vim-prettier',
    ft = { 'javascript', 'typescript', 'css', 'less', 'scss', 'graphql', 'markdown', 'vue', 'html' } }
  use { 'nvim-tree/nvim-tree.lua', requires = {
    'nvim-tree/nvim-web-devicons', -- optional, for file icons
  }, }
  use { "EdenEast/nightfox.nvim" }
  vim.api.nvim_set_keymap("n", "<C-b>", ":NvimTreeFindFileToggle<cr>", { noremap = true, silent = true }) --[[   ft = { 'javascript', 'typescript', 'css', 'less', 'scss', 'graphql', 'markdown', 'vue', 'html' } ]]
end
