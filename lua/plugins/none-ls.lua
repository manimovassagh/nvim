return {
    "nvimtools/none-ls.nvim",
    config = function()
        local null_ls = require("null-ls")
        null_ls.setup({
            source = {null_ls.builtins.formatting.stylua, null_ls.builtins.diagnostics.eslint,
                      null_ls.builtins.completion.spell, null_ls.builtins.code_actions.xo,
                      null_ls.builtins.diagnostics.flake8}
        })
        vim.keymap.set('n', '<leader>gf', vim.lsp.buf.format, {})

    end

}
