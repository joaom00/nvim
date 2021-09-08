local M = {}

function M.config()
  JM.lang.typescriptreact = {}
end

function M.formatter()
  JM.lang.typescriptreact.formatters = {
    {
      exe = "prettier",
      args = {},
    },
    -- {
    --   exe = "prettierd",
    --   args = {},
    -- },
    -- {
    --   exe = "prettier_d_slim",
    --   args = {},
    -- },
  }
end

function M.linter()
  JM.lang.typescriptreact.linters = {
    -- {
    --   exe = "eslint"
    -- }
    {
      exe = "eslint_d",
    },
  }
end

function M.lsp()
  JM.lang.typescriptreact.lsp = {
    provider = "tsserver",
    setup = {
      cmd = {
        DATA_PATH .. "/lspinstall/typescript/node_modules/.bin/typescript-language-server",
        "--stdio",
      },
    },
  }
end

function M.setup()
  M.config()
  M.formatter()
  M.linter()
  M.lsp()
end

return M