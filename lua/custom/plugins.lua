return function(use)
  use { "windwp/nvim-autopairs" }
  use { "mbbill/undotree" }
  use { 'prettier/vim-prettier',
    ft = { 'javascript', 'typescript', 'css', 'less', 'scss', 'graphql', 'markdown', 'vue', 'html' } }
  use { 'nvim-tree/nvim-tree.lua', requires = {
    'nvim-tree/nvim-web-devicons', -- optional, for file icons
  }, }
  use { "EdenEast/nightfox.nvim" }
  use {
    "folke/zen-mode.nvim",
    config = function()
      require("zen-mode").setup {
        -- your configuration comes here
        -- or leave it empty to use the default settings
        -- refer to the configuration section below
      }
    end
  }
  use { "thedenisnikulin/vim-cyberpunk" }
  use { "akai54/2077.nvim" }
  use { 'folke/tokyonight.nvim' }
end
