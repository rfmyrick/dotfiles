-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
--
-- Add any additional autocmds here
-- with `vim.api.nvim_create_autocmd`
--
-- Or remove existing autocmds by their group name (which is prefixed with `lazyvim_` for the defaults)
-- e.g. vim.api.nvim_del_augroup_by_name("lazyvim_wrap_spell")

-- Ensure catppuccin colorscheme is loaded
vim.api.nvim_create_autocmd("VimEnter", {
  callback = function()
    -- Wait a bit to ensure all plugins are loaded, then set colorscheme
    vim.defer_fn(function()
      if vim.fn.exists(":colorscheme") == 2 then
        pcall(vim.cmd.colorscheme, "catppuccin")
      end
    end, 100)
  end,
})
