local options = {
    ensure_installed = {
        "vim",
        "lua",
        "vimdoc",
        "html",
        "css",
        "odin",
        "zig",
    },

    highlight = {
        enabled = true,
        use_languagetree = true,
    },

    indent = true,
}

require("nvim-treesitter.configs").setup(options)
