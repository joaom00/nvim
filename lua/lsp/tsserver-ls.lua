-- use the global prettier if you didn't find the local one
local prettier_instance = './node_modules/.bin/prettier'
if vim.fn.executable(prettier_instance) ~= 1 then prettier_instance = 'prettier' end

O.formatters.filetype['javascriptreact'] = {
  function()
    local args = {
      '--stdin-filepath --no-semi --single-quote --trailing-comma=none',
      vim.fn.fnameescape(vim.api.nvim_buf_get_name(0))
    }
    local extend_args = {}

    if extend_args then for i = 1, #extend_args do table.insert(args, extend_args[i]) end end

    return {exe = prettier_instance, args = args, stdin = true}
  end
}
O.formatters.filetype['javascript'] = O.formatters.filetype['javascriptreact']
O.formatters.filetype['typescript'] = O.formatters.filetype['javascriptreact']
O.formatters.filetype['typescriptreact'] = O.formatters.filetype['javascriptreact']

require('formatter.config').set_defaults {logging = false, filetype = O.formatters.filetype}

local on_attach = function(client, bufnr)
  local lsp = require 'lsp'
  lsp.common_on_attach(client, bufnr)
  lsp.tsserver_on_attach(client, bufnr)
end

require('lspconfig').tsserver.setup {
  cmd = {DATA_PATH .. '/lspinstall/typescript/node_modules/.bin/typescript-language-server', '--stdio'},
  filetypes = {'javascript', 'javascriptreact', 'javascript.jsx', 'typescript', 'typescriptreact', 'typescript.tsx'},
  on_attach = on_attach,
  -- This makes sure tsserver is not used for formatting (I prefer prettier)
  settings = {documentFormatting = false},
  handlers = {
    -- ["textDocument/publishDiagnostics"] = vim.lsp.with(vim.lsp.diagnostic.on_publish_diagnostics, {
    --   virtual_text = O.lang.tsserver.diagnostics.virtual_text,
    --   signs = O.lang.tsserver.diagnostics.signs,
    --   underline = O.lang.tsserver.diagnostics.underline,
    --   update_in_insert = true,
    -- }),
  }
}

require('lsp.ts-fmt-lint').setup()
