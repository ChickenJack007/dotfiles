vim.opt.number = true
--vim.opt.cursorline = true
vim.opt.relativenumber = true
vim.opt.shiftwidth = 2
vim.o.foldmethod = "indent"
vim.o.foldenable = true
vim.o.foldlevel = 99

vim.g.mapleader = " "
vim.opt.wrap = false
-- vim.keymap.set("n", "<leader>cd", vim.cmd.Ex) --not needed if using snacks.nvim
vim.api.nvim_set_keymap("i", "jj", "<Esc>", { noremap = false })
vim.keymap.set("n", "z", "za", opts)

