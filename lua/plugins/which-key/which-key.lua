return {
    "folke/which-key.nvim",
    event = "VeryLazy",
    init = function()
        vim.o.timeout = true
        vim.o.timeoutlen = 300
        vim.api.nvim_set_keymap("n", "<leader>d",  "Mani remap", { noremap = true })
    end,
    opts = { 
        
        
      -- your configuration comes here
      -- or leave it empty to use the default settings
      -- refer to the configuration section below
    }
  }
