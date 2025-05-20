local options = {
    formatters_by_ft = {
        lua = { "stylua" },
        go = { "golines" },
    },

    format_on_save = {
        -- These options will be passed to conform.format()
        timeout_ms = 500,
        lsp_format = "fallback",
    },
}

require("conform").setup(options)
