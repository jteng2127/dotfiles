-- open undotree
vim.keymap.set("n", "<leader>u", vim.cmd.UndotreeToggle)

-- disable diff pane auto open
vim.g.undotree_DiffAutoOpen = 0
