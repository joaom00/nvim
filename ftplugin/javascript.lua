require'lspconfig'.tsserver.setup {
  cmd = {DATA_PATH .. '/lspinstall/typescript/node_modules/.bin/typescript-language-server', '--stdio'},
  filetypes = {'javascript', 'javascriptreact', 'javascript.jsx', 'typescript', 'typescriptreact', 'typescript.tsx'},
  on_attach = require'lsp'.tsserver_on_attach,
  root_dir = require('lspconfig/util').root_pattern('package.json', 'tsconfig.json', 'jsconfig.json', '.git'),
  settings = {documentFormatting = true},
  handlers = {
    ['textDocument/publishDiagnostics'] = vim.lsp.with(vim.lsp.diagnostic.on_publish_diagnostics, {
      virtual_text = {spacing = 0, prefix = ''},
      signs = true,
      underline = true,
      update_in_insert = true

    })
  }
}

require'lsp.ts-fmt-lint'.setup()

require('utils').define_augroups({
  _javascript_autoformat = {{'BufWritePre', '*.js', 'lua vim.lsp.buf.formatting_sync(nil, 1000)'}},
  _javascriptreact_autoformat = {{'BufWritePre', '*.jsx', 'lua vim.lsp.buf.formatting_sync(nil, 1000)'}},
  _typescript_autoformat = {{'BufWritePre', '*.ts', 'lua vim.lsp.buf.formatting_sync(nil, 1000)'}},
  _typescriptreact_autoformat = {{'BufWritePre', '*.tsx', 'lua vim.lsp.buf.formatting_sync(nil, 1000)'}}
})
vim.cmd('setl ts=2 sw=2')