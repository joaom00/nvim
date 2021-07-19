require'lspconfig'.cssls.setup {
  cmd = {
    'node', DATA_PATH .. '/lspinstall/css/vscode-css/css-language-features/server/dist/node/cssServerMain.js', '--stdio'
  },
  filetypes = {'javascript', 'javascriptreact', 'typescript', 'typescriptreact'},
  on_attach = require'lsp'.common_on_attach
}
vim.cmd('setl ts=2 sw=2')