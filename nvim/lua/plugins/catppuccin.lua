return { 
  "catppuccin/nvim", 
  name = "catppuccin",
  priority = 1000,
  config = function ()
    vim.cmd.colorscheme "catppuccin"
    auto_integrations = true
  end
}
