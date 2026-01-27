return {
  "neovim/nvim-lspconfig",
  opts = {
    servers = {
      clangd = {
        on_attach = function(client, bufnr)
          -- disable signature help
          client.server_capabilities.signatureHelpProvider = false
        end,
      },
    },
  },
}
