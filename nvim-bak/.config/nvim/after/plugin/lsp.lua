----- neovim config dev
require("neodev").setup({
  -- add any options here, or leave empty to use the default settings
})

----- lsp setup
local lsp = require('lsp-zero').preset({})

lsp.on_attach(function(client, bufnr)
  lsp.default_keymaps({buffer = bufnr})
end)

-- DO NOT ENSURE INSTALLED
-- it make setting up not convenient
-- lsp.ensure_installed({
--   'lua_ls',
--   'tsserver',
--   'clangd',
--   'pylsp',
--   'bashls',
--   'cssls',
-- })

local lspconfig=require('lspconfig')

-- (Optional) Configure lua language server for neovim
-- require('lspconfig').lua_ls.setup(lsp.nvim_lua_ls())
lspconfig.bashls.setup {
  filetypes = { 'sh', 'zsh', },
}

-- example to setup lua_ls and enable call snippets
lspconfig.lua_ls.setup({
  settings = {
    Lua = {
      completion = {
        callSnippet = "Replace"
      }
    }
  }
})

-- suppress 'undefined global `vim`'
-- require('lspconfig').lua_ls.setup {
  -- ... other configs
  -- settings = {
    -- Lua = {
      -- runtime = {
        -- Tell the language server which version of Lua you're using
        -- (most likely LuaJIT in the case of Neovim)
        -- version = 'LuaJIT',
      -- },
      -- diagnostics = {
        -- Get the language server to recognize the `vim` global
        -- globals = {
          -- 'vim',
          -- 'require'
        -- },
      -- },
      -- workspace = {
        -- Make the server aware of Neovim runtime files
        -- library = vim.api.nvim_get_runtime_file("", true),
      -- },
      -- Do not send telemetry data containing a randomized but unique identifier
      -- telemetry = {
        -- enable = false,
      -- },
    -- },
  -- },
-- }

lsp.setup()

----- nvim-cmp setup
local cmp = require('cmp')
-- local cmp_action = require('lsp-zero').cmp_action()

cmp.setup({
  -- Make the first item in completion menu always be selected.
  preselect = 'item',
  completion = {
    completeopt = 'menu,menuone,noinsert'
  },

  -- rounded border
  window = {
    documentation = cmp.config.window.bordered(),
    completion = cmp.config.window.bordered(),
  },

  mapping = {
    ["<Tab>"] = cmp.mapping.confirm(),
    -- This little snippet will confirm with tab, and if no entry is selected, will confirm the first item
    --[[
    ["<Tab>"] = cmp.mapping(function(fallback)
      if cmp.visible() then
        local entry = cmp.get_selected_entry()
        if not entry then
          cmp.select_next_item({ behavior = cmp.SelectBehavior.Select })
        else
          cmp.confirm()
        end
      else
        fallback()
      end
    end, {"i","s","c",}),
    ]]--

    -- Ctrl+Space to trigger completion menu
    -- ['<C-Space>'] = cmp.mapping.complete(),

    -- Navigate between snippet placeholder
    -- ['<C-f>'] = cmp_action.luasnip_jump_forward(),
    -- ['<C-b>'] = cmp_action.luasnip_jump_backward(),
  }
})

