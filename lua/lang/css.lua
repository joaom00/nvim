local M = {}

M.config = function()
  O.lang.css = {
    virtual_text = true,
    formatter = {exe = 'prettier_d_slim', args = {}},
    lsp = {path = DATA_PATH .. '/lspinstall/css/vscode-css/css-language-features/server/dist/node/cssServerMain.js'}
  }
end

M.format = function()
  -- use the global prettier if you didn't find the local one
  local prettier_instance = './node_modules/.bin/prettier'
  if vim.fn.executable(prettier_instance) ~= 1 then prettier_instance = 'prettier_d_slim' end

  local ft = vim.bo.filetype
  O.formatters.filetype[ft] = {
    function()
      local args = {'--stdin-filepath', vim.fn.fnameescape(vim.api.nvim_buf_get_name(0))}
      -- TODO: O.lang.[ft].formatter.args
      local extend_args = O.lang.css.formatter.args

      for i = 1, #extend_args do table.insert(args, extend_args[i]) end

      return {exe = prettier_instance, args = args, stdin = true}
    end
  }
  require('formatter.config').set_defaults {logging = false, filetype = O.formatters.filetype}
end

M.lint = function()
  -- TODO: implement linters (if applicable)
  return 'No linters configured!'
end

M.lsp = function()
  local capabilities = vim.lsp.protocol.make_client_capabilities()
  capabilities.textDocument.completion.completionItem.snippetSupport = true
  require('lspconfig').cssls.setup {
    cmd = {'node', O.lang.css.lsp.path, '--stdio'},
    on_attach = require('lsp').common_on_attach,
    capabilities = capabilities
  }
end

M.dap = function()
  -- TODO: implement dap
  return 'No DAP configured!'
end

return M