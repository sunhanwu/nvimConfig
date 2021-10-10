local nvim_lsp = require('lspconfig')

-- 在语言服务器附加到当前缓冲区之后
-- 使用 on_attach 函数仅映射以下键
-- Add additional capabilities supported by nvim-cmp
local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities.textDocument.completion.completionItem.documentationFormat = { 'markdown', 'plaintext' }
capabilities.textDocument.completion.completionItem.snippetSupport = true
capabilities.textDocument.completion.completionItem.preselectSupport = true
capabilities.textDocument.completion.completionItem.insertReplaceSupport = true
capabilities.textDocument.completion.completionItem.labelDetailsSupport = true
capabilities.textDocument.completion.completionItem.deprecatedSupport = true
capabilities.textDocument.completion.completionItem.commitCharactersSupport = true
capabilities.textDocument.completion.completionItem.tagSupport = { valueSet = { 1 } }
capabilities.textDocument.completion.completionItem.resolveSupport = {
	properties = {
		'documentation',
		'detail',
		'additionalTextEdits',
	},
}
Itkey_capabilities = capabilities


-- Enable some language servers with the additional completion capabilities offered by nvim-cmp
local servers = {'pylsp'}
for _, lsp in ipairs(servers) do
	nvim_lsp[lsp].setup {
		on_attach = Itkey_on_attach,
		capabilities = Itkey_capabilities,
	}
end


