local config = require"lspinstall/util".extract_config("azure_pipelines_ls")
config.default_config.cmd[1] = "./node_modules/azure-pipelines-language-server/out/server.js"

return vim.tbl_extend('error', config, {
  install_script = [[
  ! test -f package.json && yarn init -y  || true
  yarn add azure-pipelines-language-server@latest
  ]]
})
