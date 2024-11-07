require("lsp-format").setup {}
require("lspconfig").ols.setup { on_attach = require("lsp-format").on_attach }
