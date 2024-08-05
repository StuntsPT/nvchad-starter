return {
  {
    "stevearc/conform.nvim",
    -- event = 'BufWritePre', -- uncomment for format on save
    opts = require "configs.conform",
  },

  -- These are some examples, uncomment them if you want to see them work!
  {
    "neovim/nvim-lspconfig",
    config = function()
      require "configs.lspconfig"
    end,
  },
  -- Added by Francisco
  -- Do not override nvim-qt runtime path
  {
    "equalsraf/neovim-gui-shim",
    enabled = true,
  },

  -- Snakemake syntax highlighting
  -- Obtained from here:
  -- https://github.com/folke/lazy.nvim/issues/183#issuecomment-1376469054
  {
    "snakemake/snakemake",
    ft = "snakemake",
    config = function(plugin)
      vim.opt.rtp:append(plugin.dir .. "/misc/vim")
      require("lazy.core.loader").packadd(plugin.dir .. "/misc/vim")
    end,
    init = function(plugin)
      require("lazy.core.loader").ftdetect(plugin.dir .. "/misc/vim")
    end,
  },

  { "bioSyntax/bioSyntax-vim", lazy = false },

  -- Make nvim reactive to window changes, buffer type, etc...
  { 'rasulomaroff/reactive.nvim', lazy=false },
  -- To make a plugin not be loaded
  -- {
  --   "NvChad/nvim-colorizer.lua",
  --   enabled = false
  -- },
  {
  	"nvim-treesitter/nvim-treesitter",
  	opts = {
  		ensure_installed = {
  			"vim", "lua", "vimdoc",
       "html", "css"
  		},
  	},
  },
}
