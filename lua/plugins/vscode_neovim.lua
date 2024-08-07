return {
  "vscode-neovim/vscode-neovim",
  config = function()
    local vscode = _.require("vscode-neovim")
    if not vscode then return end

    vim.notify = vscode.notify
    vim.notify("Neovim activated.", vim.log.levels.INFO)
  end,
}
