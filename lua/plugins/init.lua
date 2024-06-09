return {
  {
    "stevearc/conform.nvim",
    -- event = 'BufWritePre', -- uncomment for format on save
    config = function()
      require "configs.conform"
    end,
  },
  {
    "nvimtools/none-ls.nvim",
    event = "VeryLazy",
    opts = function ()
      return require "configs.none-ls"
    end,
  },
  {
     "neovim/nvim-lspconfig",
     config = function()
       require("nvchad.configs.lspconfig").defaults()
       require "configs.lspconfig"
     end,
  },
  {
    "williamboman/mason.nvim",
   	opts = {
   	  ensure_installed = {
   		  "lua-language-server", 
   		  "stylua",
        	  "clangd", 
        	  "clang-format"
   		},
   	},
  },
  {
  	"nvim-treesitter/nvim-treesitter",
   	opts = {
   		ensure_installed = {
   			"vim", "lua", "vimdoc",
        		"cpp", "bash"
   		},
   	},
   },
}
