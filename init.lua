vim.cmd("set expandtab")
vim.cmd("set tabstop=2")
vim.cmd("set softtabstop=2")
vim.cmd("set shiftwidth=2")
vim.g.mapleader = " "
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

local opts = {}

--init package manager
require("lazy").setup("plugins")
require("catppuccin").setup()
vim.cmd.colorscheme "catppuccin"

--telescope key binding and requirement
local builtin = require("telescope.builtin")
vim.keymap.set('n', '<C-f>', builtin.find_files, {})
vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})

--treesitter configs
local configs = require("nvim-treesitter.configs")
configs.setup({
          ensure_installed = { "lua" ,"yaml", "javascript", "html" , "typescript","java","python","go","sql" },
          sync_install = false,
          highlight = { enable = true },
          indent = { enable = true },  
        })

--neotree keymap binding
vim.keymap.set('n','<leader>e',':Neotree<CR>')

