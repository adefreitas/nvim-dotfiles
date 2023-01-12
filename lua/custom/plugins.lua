return function(use)
  use { "nyoom-engineering/oxocarbon.nvim" }
  use { "windwp/nvim-autopairs" }
  use { "mbbill/undotree" }
  use { 'prettier/vim-prettier',
    ft = { 'javascript', 'typescript', 'css', 'less', 'scss', 'graphql', 'markdown', 'vue', 'html' } }
  use { 'preservim/nerdtree' }
  vim.api.nvim_set_keymap("n", "<C-b>", ":NERDTreeFind<cr>", { noremap = true, silent = true }) --[[   ft = { 'javascript', 'typescript', 'css', 'less', 'scss', 'graphql', 'markdown', 'vue', 'html' } ]]
end
