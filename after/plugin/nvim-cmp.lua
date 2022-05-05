
local status, nvim_lsp = pcall(require, "lspconfig")
if (not status) then
  return
end

--local nvim_lsp = require('lspconfig')
--typescript支持
require("lspconf.typescript")
--json支持
--require("lspconf.json")
-- require("lspconf.python")
--lua
--require("lspconf.lua")
--普通的语言支持
--require("lspconf.common")

-- Set completeopt to have a better completion experience
vim.o.completeopt = "menuone,noselect"

-- luasnip setup
local luasnip = require "luasnip"
local lspkind = require("lspkind")

-- nvim-cmp setup
local cmp = require "cmp"

-- 自动提示1 详情信息
local cmpFormat1 = function(entry, vim_item)
  -- fancy icons and a name of kind
  vim_item.kind = require("lspkind").presets.default[vim_item.kind] .. " " .. vim_item.kind
  -- set a name for each source
  vim_item.menu =
    ({
    buffer = "[Buffer]",
    nvim_lsp = "[LSP]",
    ultisnips = "[UltiSnips]",
    nvim_lua = "[Lua]",
    cmp_tabnine = "[TabNine]",
    look = "[Look]",
    path = "[Path]",
    spell = "[Spell]",
    calc = "[Calc]",
    emoji = "[Emoji]"
  })[entry.source.name]
  return vim_item
end

-- 自动提示2 简洁信息
local cmpFormat2 = function(entry, vim_item)
  vim_item.kind = lspkind.presets.default[vim_item.kind]
  return vim_item
end

-- 自动提示3 详情信息
local cmpFormat3 = function(entry, vim_item)
  -- fancy icons and a name of kind
  vim_item.kind = require("lspkind").presets.default[vim_item.kind] .. ""
  -- set a name for each source
  vim_item.menu =
    ({
    buffer = "[Buffer]",
    nvim_lsp = "",
    ultisnips = "[UltiSnips]",
    nvim_lua = "[Lua]",
    cmp_tabnine = "[TabNine]",
    look = "[Look]",
    path = "[Path]",
    spell = "[Spell]",
    calc = "[Calc]",
    emoji = "[Emoji]"
  })[entry.source.name]
  return vim_item
end

--重写插件方法,为了实现function 后,自动追加()
local core = require("cmp.core")
local keymap = require("cmp.utils.keymap")
--local cmp_confirm = cmp.confirm
--cmp.confirm = function(option)
--  option = option or {}
--  local e = core.menu:get_selected_entry() or (option.select and core.menu:get_first_entry() or nil)
--  if e then
--    core.confirm(
--      e,
--      {
--        behavior = option.behavior
--      },
--      function()
--        local myContext = core.get_context({reason = cmp.ContextReason.TriggerOnly})
--        core.complete(myContext)
--        --function() 自动增加()
--        if
--          e and e.resolved_completion_item and
--            (e.resolved_completion_item.kind == 3 or e.resolved_completion_item.kind == 2)
--         then
--          vim.api.nvim_feedkeys(keymap.t("()<Left>"), "n", true)
--        end
--      end
--    )
--    return true
--  else
--    return false
--  end
--end

cmp.setup {
  formatting = {
    format = cmpFormat3
  },
  snippet = {
    expand = function(args)
      require("luasnip").lsp_expand(args.body)
    end
  },
  mapping = {
	['<Tab>'] = cmp.mapping.select_next_item({ behavior = cmp.SelectBehavior.Insert }),
	--['<Tab>'] = cmp.mapping(cmp.mapping.select_next_item(), { 'i', 's' }),
    ["<C-p>"] = cmp.mapping.select_prev_item(),
    --["<C-n>"] = cmp.mapping.select_next_item(),
    ["<C-d>"] = cmp.mapping.scroll_docs(-4),
    ["<C-f>"] = cmp.mapping.scroll_docs(4),
    ["<C-Space>"] = cmp.mapping.complete(),
    ["<C-e>"] = cmp.mapping.close(),
    ["<CR>"] = cmp.mapping.confirm {
      behavior = cmp.ConfirmBehavior.Replace,
      select = false
    },
    --["<Tab>"] = function(fallback)
    --  if vim.fn.pumvisible() == 1 then
    --    vim.fn.feedkeys(vim.api.nvim_replace_termcodes("<C-n>", true, true, true), "n")
    --  elseif luasnip.expand_or_jumpable() then
    --    vim.fn.feedkeys(vim.api.nvim_replace_termcodes("<Plug>luasnip-expand-or-jump", true, true, true), "")
    --  else
    --    fallback()
    --  end
    --end,
    ["<S-Tab>"] = function(fallback)
      if vim.fn.pumvisible() == 1 then
        vim.fn.feedkeys(vim.api.nvim_replace_termcodes("<C-p>", true, true, true), "n")
      elseif luasnip.jumpable(-1) then
        vim.fn.feedkeys(vim.api.nvim_replace_termcodes("<Plug>luasnip-jump-prev", true, true, true), "")
      else
        fallback()
      end
    end
  },
  sources = {
    {name = "nvim_lsp"},
    {name = "luasnip"}, --{name = "nvim_lua"},
    {
      name = "buffer",
      opts = {
        get_bufnrs = function()
          return vim.api.nvim_list_bufs()
        end
      }
    },
    {
      name = "look"
    },
    {name = "path"},
    {name = "cmp_tabnine"},
    {name = "calc"},
    {name = "spell"},
    {name = "emoji"}
  }
}

