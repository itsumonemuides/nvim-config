return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      setup = {
        gopls = function(_, opts)
          local old_on_attach = opts.on_attach
          opts.on_attach = function(client, bufnr)
            -- Go の semantic tokens を殺す（プレビューと色が揃う）
            client.server_capabilities.semanticTokensProvider = nil
            if old_on_attach then
              old_on_attach(client, bufnr)
            end
          end
        end,
      },
    },
  },
}
