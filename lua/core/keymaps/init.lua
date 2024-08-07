local vscode = require("vscode-neovim")

local reg = {
  --- @param mode string|table
  --- @param lhs string
  --- @param command string
  --- @param opts table|nil Table of |:map-arguments|.
  action = function(mode, lhs, command, opts)
    vim.keymap.set(mode, lhs, function() vscode.action(command) end, opts)
  end,

  keymap = vim.keymap.set
}

reg.keymap("", "<esc>", "<cmd>noh<cr><esc>", { desc = "Escape" })

reg.keymap("v", "<c-p>", [["_dP]], { desc = "Paste without yanking" })

reg.keymap("v", "<", "<gv", { desc = "Indent selection left" })
reg.keymap("v", ">", ">gv", { desc = "Indent selection right" })

reg.action("", "<leader>", "whichkey.show")

reg.action("", "\\", "actions.find")
reg.action("", "|", "editor.action.startFindReplaceAction")

reg.action("", "<c-h>", "workbench.action.previousEditor")
reg.action("", "<c-l>", "workbench.action.nextEditor")

reg.action("", "<c-o>", "workbench.action.navigateBack")
reg.action("", "<c-i>", "workbench.action.navigateForward")

reg.action("", "<c-j>", "editor.action.smartSelect.shrink")
reg.action("", "<c-k>", "editor.action.smartSelect.grow")

reg.action("v", "K", "editor.action.moveLinesUpAction")
reg.action("v", "J", "editor.action.moveLinesDownAction")
