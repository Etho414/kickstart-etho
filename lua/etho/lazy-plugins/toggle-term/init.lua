local keybind_dict = require 'etho.custom-remaps'
return {

  {
    'akinsho/toggleterm.nvim',
    version = '*',
    opts = {--[[ things you want to change go here]]

      size = 16,
      open_mapping = keybind_dict.toggle_term,
      shade_terminals = true,
    },
  }, -- Terminal Plugin
}
