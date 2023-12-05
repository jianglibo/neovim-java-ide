return {
  {
    "nvim-neo-tree/neo-tree.nvim",
    branch = "v3.x",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
      "MunifTanjim/nui.nvim",
      -- "3rd/image.nvim", -- Optional image support in preview window: See `# Preview Mode` for more information
    }
},
  { 'github/copilot.vim' },
  {
    "folke/tokyonight.nvim",
    lazy = false,
    priority = 1000,
    opts = {},
  },
  {
    "williamboman/mason.nvim",
    config = function() require('config/mason') end,
  },
  {
    'williamboman/mason-lspconfig.nvim',
    config = function() require('config/mason-lspconfig') end,
  },
  'neovim/nvim-lspconfig',
  'aklt/plantuml-syntax',
  'bronson/vim-visual-star-search',
  {
    'chentoast/marks.nvim',
    config = function()
      require("marks").setup()
    end
  },
  'godlygeek/tabular',
  'itspriddle/vim-marked',
  'ludovicchabant/vim-gutentags',
  'leafOfTree/vim-svelte-plugin',
  'mfussenegger/nvim-jdtls',
  'nvim-lua/plenary.nvim',
  'tpope/vim-commentary',
  'tpope/vim-fugitive',
  'tpope/vim-repeat',
  'tpope/vim-rhubarb',
  'tpope/vim-surround',
  'tpope/vim-unimpaired',
  'tyru/open-browser.vim',
  'andymass/vim-matchup',
  'vim-test/vim-test',
  'weirongxu/plantuml-previewer.vim',
  {
    'folke/trouble.nvim',
    config = function()
      require("trouble").setup({
        mode = "document_diagnostics"
      })
    end
  },
  {
    'folke/which-key.nvim',
    config = function()
      require("which-key").setup()
    end
  },
  {
    'gelguy/wilder.nvim',
    config = function() require('config/wilder') end,
  },
  {
    'goolord/alpha-nvim',
    config = function()
      require('alpha').setup(require 'alpha.themes.startify'.config)
    end
  },
  {
    'hrsh7th/nvim-cmp',
    dependencies = {
      'hrsh7th/cmp-nvim-lsp',
      'hrsh7th/cmp-nvim-lsp-signature-help',
      'hrsh7th/cmp-vsnip',
      'hrsh7th/vim-vsnip',
      'onsails/lspkind.nvim',
    },
    config = function() require('config/nvim-cmp') end,
  },
  {
    'mfussenegger/nvim-dap',
    config = function() require('config/nvim-dap') end,
  },
  {
    'navarasu/onedark.nvim',
    config = function()
      require('onedark').load()
    end
  },
  {
    'nvim-lualine/lualine.nvim',
    config = function()
      require('lualine').setup {
        options = { theme = 'onedark' },
      }
    end
  },
  {
    'nvim-telescope/telescope.nvim',
    branch = '0.1.x',
    dependencies = {
      'nvim-telescope/telescope-dap.nvim',
      { 'nvim-telescope/telescope-fzf-native.nvim', build = 'make' },
      'nvim-telescope/telescope-ui-select.nvim',
    },
    config = function() require('config/telescope') end,
  },
  {
    'nvim-tree/nvim-web-devicons',
  },
  -- {
  --   'nvim-treesitter/nvim-treesitter',
  --   build = function() require('nvim-treesitter.install').update({ with_sync = true }) end,
  --   config = function() require('config/nvim-treesitter') end,
  -- },
  {
    'preservim/vim-pencil',
    dependencies = {
      'preservim/vim-litecorrect',
      'kana/vim-textobj-user',
      'preservim/vim-textobj-quote',
      'preservim/vim-textobj-sentence',
    },
    config = function()
      local augroup = vim.api.nvim_create_augroup
      local autocmd = vim.api.nvim_create_autocmd
      augroup('pencil', { clear = true })
      autocmd('FileType', {
        group = 'pencil',
        pattern = { "markdown", "text" },
        callback = function()
          vim.cmd("call pencil#init({'wrap': 'hard'})")
          vim.cmd("call litecorrect#init()")
          vim.cmd("call textobj#quote#init()")
          vim.cmd("call textobj#sentence#init()")
        end
      })
    end
  },
  {
    'simrat39/symbols-outline.nvim',
    config = function()
      require("symbols-outline").setup {
        auto_close = true,
      }
    end
  },
  {
    'stevearc/oil.nvim',
    config = function()
      require("oil").setup({
        skip_confirm_for_simple_edits = true,
      })
    end
  }
}
