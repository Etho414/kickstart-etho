return {

  { -- Fuzzy Finder (files, lsp, etc)
    'nvim-telescope/telescope.nvim',
    event = 'VimEnter',
    branch = '0.1.x',
    dependencies = {
      'nvim-lua/plenary.nvim',
      { -- If encountering errors, see telescope-fzf-native README for installation instructions
        'nvim-telescope/telescope-fzf-native.nvim',

        -- `build` is used to run some command when the plugin is installed/updated.
        -- This is only run then, not every time Neovim starts up.
        build = 'make',

        -- `cond` is a condition used to determine whether this plugin should be
        -- installed and loaded.
        cond = function()
          return vim.fn.executable 'make' == 1
        end,
      },

      { 'nvim-telescope/telescope-ui-select.nvim' },

      -- Useful for getting pretty icons, but requires a Nerd Font.
      { 'nvim-tree/nvim-web-devicons', enabled = vim.g.have_nerd_font },
    },
    config = function()
      require('telescope').setup {
        extensions = {
          ['ui-select'] = {
            require('telescope.themes').get_dropdown(),
          },
        },
      }

      -- Enable Telescope extensions if they are installed
      pcall(require('telescope').load_extension, 'fzf')
      pcall(require('telescope').load_extension, 'ui-select')

      -- See `:help telescope.builtin`
      local builtin = require 'telescope.builtin'

      vim.keymap.set('n', _G.custom_keybinds_etho.telescope.help_tag, builtin.help_tags, { desc = '[S]earch [H]elp' })
      vim.keymap.set('n', _G.custom_keybinds_etho.telescope.keymaps, builtin.keymaps, { desc = '[S]earch [K]eymaps' })
      vim.keymap.set('n', _G.custom_keybinds_etho.telescope.find_files, builtin.find_files, { desc = '[S]earch [F]iles' })
      vim.keymap.set('n', _G.custom_keybinds_etho.telescope.builtin, builtin.builtin, { desc = '[S]earch [S]elect Telescope' })
      vim.keymap.set('n', _G.custom_keybinds_etho.telescope.grep_string, builtin.grep_string, { desc = '[S]earch current [W]ord' })
      vim.keymap.set('n', _G.custom_keybinds_etho.telescope.live_grep, builtin.live_grep, { desc = '[S]earch by [G]rep' })
      vim.keymap.set('n', _G.custom_keybinds_etho.telescope.diagnostics, builtin.diagnostics, { desc = '[S]earch [D]iagnostics' })
      vim.keymap.set('n', _G.custom_keybinds_etho.telescope.resume, builtin.resume, { desc = '[S]earch [R]esume' })
      vim.keymap.set('n', _G.custom_keybinds_etho.telescope.oldfiles, builtin.oldfiles, { desc = '[S]earch Recent Files ("." for repeat)' })
      vim.keymap.set('n', _G.custom_keybinds_etho.telescope.buffers, builtin.buffers, { desc = '[ ] Find existing buffers' })

      -- Slightly advanced example of overriding default behavior and theme
      vim.keymap.set('n', _G.custom_keybinds_etho.telescope.fuzzy_buffer, function()
        builtin.current_buffer_fuzzy_find(require('telescope.themes').get_dropdown {
          winblend = 10,
          previewer = false,
        })
      end, { desc = '[/] Fuzzily search in current buffer' })

      vim.keymap.set('n', _G.custom_keybinds_etho.telescope.search_open, function()
        builtin.live_grep {
          grep_open_files = true,
          prompt_title = 'Live Grep in Open Files',
        }
      end, { desc = '[S]earch [/] in Open Files' })

      -- Shortcut for searching your Neovim configuration files
      vim.keymap.set('n', _G.custom_keybinds_etho.telescope.search_neovim, function()
        builtin.find_files { cwd = vim.fn.stdpath 'config' }
      end, { desc = '[S]earch [N]eovim files' })
    end,
  },
}
