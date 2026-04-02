return {
  "nvim-neo-tree/neo-tree.nvim",
  branch = "v3.x",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "MunifTanjim/nui.nvim",
    "nvim-tree/nvim-web-devicons",
    },
  lazy = false, -- neo-tree will lazily load itself
  
  config = function()

  require('neo-tree').setup({
    close_if_last_window = true,
    filesystem = {
      filtered_items = {
        visible = true, -- Set to true to show hidden files
        hide_dotfiles = false, -- Specifically show dotfiles
        hide_gitignored = false, -- Optionally show gitignored files
      },
    },
    
       
  })
    vim.keymap.set('n', '<C-n>', ':Neotree filesystem reveal left<CR>')
    vim.api.nvim_create_autocmd("BufEnter", {
      callback = function()
      local layout = vim.api.nvim_list_wins()
      if #layout == 1 then
      local bufname = vim.api.nvim_buf_get_name(0)
      if bufname:match("neo%-tree") then
      vim.cmd("quit")
      end
    end
  end,
})
  end
}
