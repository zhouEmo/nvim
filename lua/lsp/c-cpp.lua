local lsp_set_keymap = require("lsp/keybindings")
local on_attach = function(_, bufnr)
  lsp_set_keymap.set_keymap(bufnr)
end

local lspconfig = require('lspconfig')
lspconfig.ccls.setup {
  init_options = {
    cache = {
      directory = ".ccls-cache";
    };
  },
  on_attach = on_attach,
}


