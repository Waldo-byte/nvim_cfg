local linux = 0
local fsb = 1
local operating_sys = linux
-- plugins
require("plugins.lazy")
require('mason').setup()
require('mason-lspconfig').setup()
--configs
require("plugin_config.telescope_conf")
require("plugin_config.treesitter_conf")
-- settings
require("options")
require("keymaps")

if operating_sys == fsb then
  local nvim_clanglsp = require('lspconfig')
  nvim_clanglsp.clangd.setup{
  cmd = { 'clangd', '--background-index' },
  filetypes = { 'c', 'cpp' },  -- Set the filetypes for which this language server should be enabled
  root_dir = nvim_clanglsp.util.root_pattern('.git', 'compile_commands.json'),  -- Set the root directory detection method
  capabilities = require('cmp_nvim_lsp').default_capabilities(vim.lsp.protocol.make_client_capabilities()),  -- Add capabilities
  on_attach = function(client, bufnr)
    -- Custom on_attach function
    -- You can add additional keybindings or configurations here
  end,
  }
end
