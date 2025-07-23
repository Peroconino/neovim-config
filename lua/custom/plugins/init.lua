-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information
return {
  {
    'mrcjkb/rustaceanvim',
    version = '^6', -- Recommended
    lazy = false, -- This plugin is already lazy
  },
  {
    'saecki/crates.nvim',
    config = function()
      require('crates').setup {}
    end,
  },
  'mg979/vim-visual-multi',
  require 'custom.plugins.noutgat_pointy',
}
