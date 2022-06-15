local capabilities = require("cmp_nvim_lsp").update_capabilities(vim.lsp.protocol.make_client_capabilities())
capabilities.textDocument.completion.completionItem.snippetSupport = true

local function on_attach(client, bufnr)
  client.server_capabilities.document_formatting = false
  require("navigator.lspclient.mapping").setup {
    client = client,
    bufnr = bufnr,
    cap = client.server_capabilities,
  }
end

require("lspconfig").jsonls.setup {
  capabilities = capabilities,
  on_attach = on_attach,
  settings = {
    json = {
      schemas = require("schemastore").json.schemas(),
    },
  },
}
