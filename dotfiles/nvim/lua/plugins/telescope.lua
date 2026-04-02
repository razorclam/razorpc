return {
  'nvim-telescope/telescope.nvim',
  version = '*',
  dependencies = { 'nvim-lua/plenary.nvim' },
  config = function()
    local builtin = require("telescope.builtin")

    require("telescope").setup({
      defaults = {
        file_ignore_patterns = { "node_modules", ".git/", "dist" },
      },
    })

    vim.keymap.set('n', '<C-p>', function()
      builtin.find_files({ hidden = true })
    end, { desc = "Find files" })

    vim.keymap.set('n', '<leader>fg', function()
      builtin.live_grep({
        additional_args = function()
          return { "--hidden" }
        end
      })
    end, { desc = "Live grep" })
  end
}





