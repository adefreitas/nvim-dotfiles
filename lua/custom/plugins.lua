return function(use)
  use { "windwp/nvim-autopairs" }
  use { "mbbill/undotree" }
  use { 'nvim-tree/nvim-tree.lua', requires = {
    'nvim-tree/nvim-web-devicons', -- optional, for file icons
  }, }
  use('jose-elias-alvarez/null-ls.nvim')
  use('MunifTanjim/prettier.nvim')
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
  use { 'github/copilot.vim', config = function() require("copilot").setup { lazy = false} end }
end
