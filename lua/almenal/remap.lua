-- This is all copied from theprimeagen =========

vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

vim.keymap.set("n", "J", "mzJ`z")
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")


-- greatest remap ever
vim.keymap.set("x", "<leader>p", [["_dP]])

-- next greatest remap ever : asbjornHaland
vim.keymap.set({"n", "v"}, "<leader>y", [["+y]])
vim.keymap.set("n", "<leader>Y", [["+Y]])

vim.keymap.set({"n", "v"}, "<leader>d", [["_d]])

-- This is going to get me cancelled
vim.keymap.set("i", "<C-c>", "<Esc>")

vim.keymap.set("n", "Q", "<nop>")
vim.keymap.set("n", "<C-f>", "<cmd>silent !tmux neww tmux-sessionizer<CR>")
vim.keymap.set("n", "<leader>fr", vim.lsp.buf.format)

vim.keymap.set("n", "<C-k>", "<cmd>cnext<CR>zz")
vim.keymap.set("n", "<C-j>", "<cmd>cprev<CR>zz")
vim.keymap.set("n", "<leader>k", "<cmd>lnext<CR>zz")
vim.keymap.set("n", "<leader>j", "<cmd>lprev<CR>zz")

vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])
vim.keymap.set("n", "<leader>x", "<cmd>!chmod +x %<CR>", { silent = true })

vim.keymap.set("n", "<leader>vpp", "<cmd>e ~/.dotfiles/nvim/.config/nvim/lua/almenal/packer.lua<CR>");
-- vim.keymap.set("n", "<leader>mr", "<cmd>CellularAutomaton make_it_rain<CR>");

-- vim.keymap.set("n", "<leader><leader>", function()
--     vim.cmd("so")
-- end)


-- These are mine ===============================

-- (Un)Quote Word: shortcuts to wrap a word in quotes
-- this is a "word" in a sentence
-- this is a word in a sentence
vim.keymap.set("n", "<leader>qw", "ciw\"\"<Esc>P");
vim.keymap.set("n", "<leader>uw", "di\"pBd2l");

vim.keymap.set("n", "<leader>nh", "<cmd>noh<CR>");
vim.keymap.set("n", "<leader>vs", "<cmd>vsplit<CR><C-w>l");
-- Change window width when in split window mode
vim.keymap.set("n", "<leader>>", "15<C-w>>");
vim.keymap.set("n", "<leader><", "15<C-w><");
vim.keymap.set("n", "<leader>wf", "100<C-w>>");
-- Apparently neovim now has built-in line commenting
-- doesn't seem to work
-- vim.keymap.set("n", "<leader>ca", "gc");

-- Open remaps.lua file to add/modify custom key mappings
vim.api.nvim_create_user_command('Remaps', function()
    vim.cmd('tabnew ~/.config/nvim/lua/almenal/remap.lua')
    -- Fancier version which uses vim.fn.expand to expand ~ into full path
    -- and then uses lua's concatenation operator (..) to paste together
    -- both strings: edit and the result of the function 'expand'
    -- vim.cmd('edit' .. vim.fn.expand('~/.config/nvim/lua/almenal/remap.lua'))
end, {})

-- Open packer.lua file to add/modify loaded plugins
vim.api.nvim_create_user_command('Packages', function()
    vim.cmd('tabnew ~/.config/nvim/lua/almenal/packer.lua')
end, {})

-- Open the plugin list
vim.api.nvim_create_user_command('Plugins', function()
    vim.cmd('tabnew ~/.config/nvim/after/plugin')
end, {})

-- Trim trailing whitespace
vim.api.nvim_create_user_command('TrimSpace', function()
    local current_pos = vim.api.nvim_win_get_cursor(0)
    vim.cmd('%s/\\s*$//g')
    vim.cmd('nohlsearch')
    vim.api.nvim_win_set_cursor(0, current_pos)
end, {})

-- Nvim version for my 'whoopsie' alias (git commit --amend --no-edit)
-- Uses Fugitive plugin as git interface (hence why it's spelled Git with G)
vim.api.nvim_create_user_command('Whoopsie', function()
    vim.cmd('Git commit --amend --no-edit')
end, {})

-- Python debugging: insert an f-string in debugging mode
vim.keymap.set("n", "<leader>pp", "iprint(f\"{=}\")<Esc>F{") -- a) empty template
vim.keymap.set("n", "<leader>pt", "yiwoprint(f\"{=}\")<Esc>F{p") -- b) debug this variable


vim.api.nvim_create_user_command('Untab', function()
    vim.cmd('%s/\t/    /g')
end, {})


-- Run current python file with uv
vim.keymap.set("n", "<leader>ur", ":!uv run %<CR>")

