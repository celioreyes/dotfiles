local options = {
    ensure_installed = {
        "vim",
        "lua",
        "vimdoc",
        "html",
        "css",
        "zig",
        "go",
        "gomod",
        "gosum",
        "gowork",
        "rust",
    },

    highlight = {
        enable = true,
        use_languagetree = true,
    },

    indent = true,
}

require("nvim-treesitter.configs").setup(options)
