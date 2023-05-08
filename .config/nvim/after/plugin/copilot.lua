-- use <C-j> to accept copilot suggestion instead of <Tab>
vim.g.copilot_no_tab_map = true
vim.api.nvim_set_keymap("i", "<C-L>", 'copilot#Accept("<CR>")',
  { silent = true, expr = true })
-- this didn't work, idk why
-- vim.keymap.set("i", "<C-j>", 'copilot#Accept("<CR>")',
--   { silent = true, expr = true })

-- show next/previous suggestion
vim.api.nvim_set_keymap("i", "<C-J>", 'copilot#Next()',
  { silent = true, expr = true })
vim.api.nvim_set_keymap("i", "<C-K>", 'copilot#Previous()',
  { silent = true, expr = true })
