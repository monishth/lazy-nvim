-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")

vim.api.nvim_create_augroup("TmuxVariables", { clear = true })
vim.api.nvim_create_autocmd("VimEnter", {
  group = "TmuxVariables",
  callback = function()
    vim.fn.system('tmux set-option -p @pane-is-vim 1')
  end
})
vim.api.nvim_create_autocmd("VimLeave", {
  group = "TmuxVariables",
  callback = function()
    vim.fn.system('tmux set-option -p @pane-is-vim 0')
  end
})
