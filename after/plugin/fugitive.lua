vim.keymap.set("n", "<leader>gs", ":Git status<CR>")
vim.keymap.set("n", "<leader>gd", ":Git diff<CR>")
vim.keymap.set("n", "<leader>gD", ":Git diff --staged<CR>")
vim.keymap.set("n", "<leader>gl", ":vertical Git log --all --decorate --oneline --graph<CR>")
vim.keymap.set("n", "<leader>gc", ":Git commit -v<CR>")
vim.keymap.set("n", "<leader>ga", ":Git add %<CR>") -- % is vim for 'this file'

vim.opt.diffopt="vertical"
