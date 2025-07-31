-- Switching tabs for spaces
vim.opt.expandtab = true
vim.opt.tabstop = 2
vim.opt.shiftwidth = 2
-- Relative numbers
vim.wo.relativenumber = true
-- Folding
vim.opt.foldmethod = 'expr'
vim.opt.foldexpr = 'v:lua.vim.treesitter.foldexpr()'
vim.opt.foldcolumn = '0'
vim.opt.foldtext = ''
vim.opt.foldlevelstart = 2
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
  {
    'csessh/stopinsert.nvim',
    event = { 'InsertEnter' }, -- lazy load
    dependencies = {
      -- "hrsh7th/nvim-cmp",
      'saghen/blink.cmp',
    },
    opts = {
      -- Configuration options (see Configuration section below for details)
      idle_time_ms = 3000, -- Maximum time (in milliseconds) before you are forced out of Insert mode
      show_popup_msg = true, -- Enable/disable popup message
      clear_popup_ms = 3000, -- Maximum time (in milliseconds) for which the popup message hangs around
      disabled_filetypes = { -- List of filetypes to exclude the effect of this plugin.
        'TelescopePrompt',
        'checkhealth',
        'help',
        'lspinfo',
        'mason',
        'neo%-tree*',
      },
      guard_func = function() -- Optional function that returns a boolean. If true, prevents stopinsert.
        -- return require('cmp').visible_docs()
        return require('blink.cmp').is_documentation_visible()
      end,
    },
  },
  require 'custom.plugins.noutgat_pointy',
}
