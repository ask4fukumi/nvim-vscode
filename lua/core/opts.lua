local g = vim.g
local opt = vim.opt

g.mapleader = " "

g.loaded_python3_provider = 0
g.loaded_ruby_provider = 0
g.loaded_node_provider = 0
g.loaded_perl_provider = 0

opt.smartindent = true
opt.expandtab = true
opt.tabstop = 2
opt.shiftwidth = 2

opt.list = true -- Show invisible characters

opt.number = true
opt.relativenumber = true
opt.numberwidth = 1
opt.signcolumn = "yes"
opt.cursorline = true

opt.termguicolors = true

opt.mouse = "a"

if vim.fn.has("nvim-0.10") == 1 then
    opt.smoothscroll = true
end

opt.fillchars = {
  foldopen = "",
  wbr = "|",
  foldclose = "",
  fold = " ",
  foldsep = " ",
  diff = "╱",
  eob = " ",
}
