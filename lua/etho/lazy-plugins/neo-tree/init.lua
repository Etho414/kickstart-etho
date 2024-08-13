-- Neo-tree is a Neovim plugin to browse the file system
-- https://github.com/nvim-neo-tree/neo-tree.nvim
local neo_tree_bind = _G.custom_keybinds_etho.neo_tree

return {
  'nvim-neo-tree/neo-tree.nvim',
  version = '*',
  dependencies = {
    'nvim-lua/plenary.nvim',
    'nvim-tree/nvim-web-devicons', -- not strictly required, but recommended
    'MunifTanjim/nui.nvim',
  },
  cmd = 'Neotree',
  keys = {
    { neo_tree_bind.toggle_tree, ':Neotree toggle<CR>', { desc = 'NeoTree Toggle' } },
  },
  opts = {
    filesystem = {
      window = {
        mappings = {
          ['\\'] = 'close_window',
          [neo_tree_bind.vertical_split] = 'open_vsplit',
        },
      },
    },
  },
  config = function()
    local function on_file_open()
      vim.cmd ':Neotree close'
    end

    vim.api.nvim_create_autocmd('BufEnter', {
      pattern = '*',
      callback = on_file_open,
    })
  end,
}
