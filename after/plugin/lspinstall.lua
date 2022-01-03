--require'lspinstall'.setup() -- important

--local servers = require'lspinstall'.installed_servers()
--for _, server in pairs(servers) do
  --require'lspconfig'[server].setup{}
--end
local lspconfig = require('lspconfig')
local configs = require('lspconfig.configs')

-- note we are indexing configs here, not lspconfig
if not configs.golangcilsp then
  configs.golangcilsp = {
    default_config = {
      cmd = { 'golangci-lint-langserver' },
      root_dir = lspconfig.util.root_pattern('.git', 'go.mod'),
      filetypes = { 'go' },
      init_options = {
        command = { 'golangci-lint', 'run', '--fast', '--out-format', 'json' },
      },
    },
  }
end
lspconfig.golangcilsp.setup{}
