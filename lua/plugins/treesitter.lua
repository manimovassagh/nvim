return {{
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    config = function()
        local config = require("nvim-treesitter.configs")
        config.setup({
            ensure_installed = {"lua", "yaml", "javascript", "html", "typescript", "java", "python", "go", "sql",
                                "rust", "json", "css", "bash"},
            highlight = {
                enable = true
            },
            indent = {
                enable = true
            }
        })
    end
}}
