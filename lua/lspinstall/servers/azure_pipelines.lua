-- local config = require"lspinstall/util".extract_config("azure_pipelines_ls")
-- -- config.default_config.cmd[0] = "node"
-- config.default_config.cmd[1] = "./node_modules/.bin/azure-pipelines-language-server"
-- -- config.default_config.cmd[2] = "--stdio"
--
-- return vim.tbl_extend('error', config, {
--   install_script = [[
--   ! test -f package.json && yarn init -y  || true
--   yarn add azure-pipelines-language-server@latest
--   ]]
--   -- default_config = {
--   --   cmd = { "node", "./node_modules/azure-pipelines-language-server/out/server.js", "--stdio" },
--   --   filetypes = { 'yaml' },
--   --   root_dir = require'lspconfig'.util.root_pattern(".git", vim.fn.getcwd()),
--   --   init_options = {
--   --     provideFormatter = true,
--   --   },
--   -- }
-- })
--
return {
  install_script = [[
  ! test -f package.json && yarn init -y  || true
  yarn add azure-pipelines-language-server@latest
  ]],
  default_config = {
    cmd = { "node", ".node_modules/azure-pipelines-language-server/out/server.js", "--stdio" },
    filetypes = { 'yaml' },
    root_dir = require'lspconfig'.util.root_pattern(".git", vim.fn.getcwd()),
    init_options = {
      provideFormatter = true,
    },
  }
}
