return {{
    "williamboman/mason.nvim",
    lazy = false,
    config = function()
        require("mason").setup()
    end
}, {
    "williamboman/mason-lspconfig.nvim",
    config = function()
        require("mason-lspconfig").setup({
            ensure_installed = {"lua_ls", "tsserver", "gopls", "java_language_server", "pylsp", "html","jsonls"}
        })
    end
}, {
    "neovim/nvim-lspconfig",
    lazy = false,
    config = function()
        local lspconfig = require("lspconfig")
        lspconfig.tsserver.setup({})
        lspconfig.lua_ls.setup({})
        lspconfig.gopls.setup({})
        lspconfig.java_language_server.setup({})
        lspconfig.pylsp.setup({})
        lspconfig.html.setup({})
        lspconfig.jsonls.setup({})

        vim.keymap.set('n', 'K', vim.lsp.buf.hover, {})
        vim.keymap.set('n', '<leader>gd', vim.lsp.buf.definition, {})
        vim.keymap.set('n', '<leader>gr', vim.lsp.buf.references, {})
        vim.keymap.set('n', '<leader>ca', vim.lsp.buf.code_action, {})
    end
}}
