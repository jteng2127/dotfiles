-- <leader> = " "
vim.g.mapleader = " "

-- open netrw
vim.keymap.set("n", "<leader>e", vim.cmd.Ex)

-- esc to cancel searching highlight
vim.keymap.set("n", "<Esc>", "<Esc>:noh<Enter>", { silent = true })

-- select lines and move up/down together
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- stay cursor in position when J
vim.keymap.set("n", "J", "mzJ`z")

-- keep in middle of screen when ...
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
-- `zv` is for unfold, don't know much for now
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- paste/delete and don't override register content
vim.keymap.set("x", "<leader>p", "\"_dP")
vim.keymap.set("n", "<leader>d", "\"_d")
vim.keymap.set("v", "<leader>d", "\"_d")

-- copy into system clipboard (work in wsl2, zsh, nvim)
vim.keymap.set("n", "<leader>y", "\"+y")
vim.keymap.set("v", "<leader>y", "\"+y")
vim.keymap.set("n", "<leader>Y", "\"+y")

-- switch project easily
-- vim.keymap.set("n", "<C-f>", "<cmd>silent !tmux neww tmux-sessionizer<CR>")

-- format by lsp
vim.keymap.set("n", "<leader>r", function()
  vim.lsp.buf.format()
end)

-- replace a word
vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])
