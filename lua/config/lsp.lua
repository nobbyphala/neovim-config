require("mason").setup()
require("mason-lspconfig").setup({
  ensure_installed = { "ts_ls", "lua_ls", "gopls" }, -- add more as needed
  automatic_installation = true,
})

require("lspconfig").ts_ls.setup({})
require("lspconfig").gopls.setup({})

require("go").setup()

local cmp = require('cmp')
cmp.setup({
  sources = {
    {name = 'nvim_lsp'},
    { name = "buffer" },
    { name = "path" },
  },
  snippet = {
    expand = function(args)
      vim.snippet.expand(args.body)
      -- require("luasnip").lsp_expand(args.body)
    end,
  },
  mapping = cmp.mapping.preset.insert({
    ["<C-Space>"] = cmp.mapping.complete(),
    ["<CR>"] = cmp.mapping.confirm({ select = true }),
    ["<Tab>"] = cmp.mapping(function(fallback)
      if cmp.visible() then
        cmp.select_next_item()
      --elseif luasnip.expand_or_jumpable() then
       -- luasnip.expand_or_jump()
      else
        fallback()
      end
    end, { "i", "s" }),
    ["<S-Tab>"] = cmp.mapping(function(fallback)
      if cmp.visible() then
        cmp.select_prev_item()
      elseif luasnip.jumpable(-1) then
        luasnip.jump(-1)
      else
        fallback()
      end
    end, { "i", "s" }),
  }),
})

require("nvim-treesitter.configs").setup({
  ensure_installed = { "typescript", "javascript", "lua", "json", "html", "css", "go" },
  highlight = { enable = true },
  indent = { enable = true },
})

vim.diagnostic.config({
  virtual_text = {
    prefix = "●",  -- or "●", "■", "▎", ""
    spacing = 2,
  },
  signs = true,
  underline = true,
  update_in_insert = false, -- show only after you stop typing
  severity_sort = true,
})
