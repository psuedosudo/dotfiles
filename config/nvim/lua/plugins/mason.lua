return {
  {
    "williamboman/mason.nvim",
    config = function()
        require("mason").setup()

    end
  },
  {
    "williamboman/mason-lspconfig.nvim",
    config = function()
        require("mason-lspconfig").setup({
            ensure_installed = {
                "python-lsp-server",
                "lua_ls",
                -- "pydocstyle",
                -- "pylama",
                -- "pylint",
                -- "yapf",
                -- "flake8",
                -- "pyflakes",
            }
        })
    end
  },
  {
    "neovim/nvim-lspconfig",
    config = function()
        local lspconfig = require("lspconfig")
        lspconfig.pylsp.setup {}
        lspconfig.lua_ls.setup {}
    end
  },
  {
    'mhartington/formatter.nvim'
  },
  {
    "mfussenegger/nvim-lint"
  },
  -- {
  --   "rcarriga/nvim-dap-ui",
  --   dependencies = {
  --     "mfussenegger/nvim-dap",
  --     "nvim-neotest/nvim-nio"
  --   },
  --   config = function()
  --     require("neodev").setup({
  --       library = {
  --         plugins = {
  --           "nvim-dap-ui"
  --         },
  --         types = true
  --       },
  --     })
  --   end
  -- }
}
