return  { -- Useful plugin to show you pending keybinds.
'folke/which-key.nvim',
event = 'VimEnter', -- Sets the loading event to 'VimEnter'
config = function() -- This is the function that runs, AFTER loading
  require('which-key').setup()

  -- Document existing key chains
  require('which-key').register {
    ['<leader>ff'] = { name = 'format code', _ = 'which_key_ignore' },
    ['<leader>f'] = { name = 'Format and grep f,g', _ = 'which_key_ignore' },
    ['<leader>fg'] = { name = 'grep', _ = 'which_key_ignore' },
    ['<leader>g'] = { name = 'Go to definition with gd and gr', _ = 'which_key_ignore' },
    ['<leader>gd'] = { name = 'Go to definition', _ = 'which_key_ignore' },
    ['<leader>gr'] = { name = 'Go to refrence', _ = 'which_key_ignore' },
    ['<leader>c'] = { name = 'Code action ca', _ = 'which_key_ignore' },
    ['<leader>ca'] = { name = 'Code action with ca', _ = 'which_key_ignore' },
    ['<leader>b'] = { name = 'Go to buffers on neotree', _ = 'which_key_ignore' },
    ['<leader>t'] = { name = 'Terminal toggle', _ = 'which_key_ignore' },
    

  }
end,
}