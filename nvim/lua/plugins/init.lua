return {
    {
        "nvim-treesitter/nvim-treesitter",
        event = { "BufReadPre", "BufNewFile" },
        config = function()
            require("configs.treesitter")
        end
    },

    {
        "neovim/nvim-lspconfig",
        event = { "BufReadPre", "BufNewFile"},
        config = function()
            require "nvchad.configs.lspconfig".defaults()
            require "configs.lspconfig"
        end,
    },

    {
        "williamboman/mason-lspconfig.nvim",
        event = "VeryLazy",
        dependencies = { "nvim-lspconfig" },
        config = function()
            require("configs.mason-lspconfig")
        end,
    },

    {
        "mfussenegger/nvim-lint",
        event = { "BufReadPre", "BufNewFile" },
        config = function()
            require("configs.lint")
        end,
    },

    {
        "rshkarin/mason-nvim-lint",
        event = "VeryLazy",
        dependencies = { "nvim-lint" },
        config = function()
            require("configs.mason-lint")
        end,
    },

    {
        "stevearc/conform.nvim",
        event = 'BufWritePre', -- uncomment for format on save
        cmd = { "ConformInfo"},
        config = function()
            require("configs.conform")
        end
    },

    {
        "zapling/mason-conform.nvim",
        event = "VeryLazy",
        dependencies = { "conform.nvim" },
        config = function()
            require("configs.mason-conform")
        end,
    },
    --{
    --    "lukas-reineke/lsp-format.nvim",
    --    event = 'BufWritePre', -- uncomment for format on save
    --    config = function()
    --        require("lsp-format").setup {}
    --        require("lspconfig").ols.setup { on_attach = require("lsp-format").on_attach }
    --    end
    --}
}
