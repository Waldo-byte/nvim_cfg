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
