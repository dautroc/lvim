-- vim options
vim.opt.shiftwidth = 2
vim.opt.tabstop = 2
vim.opt.relativenumber = true

-- general
lvim.log.level = "info"
lvim.format_on_save = {
  enabled = true,
  -- lvim.use_icons = false
  pattern = "*.lua",
  timeout = 1000,
}

lvim.leader = "space"

-- Mapping normal keys
lvim.keys.normal_mode["<C-s>"] = ":w<CR>"
lvim.keys.insert_mode["jj"] = "<esc>"
lvim.keys.normal_mode["tk"] = ":tabnext<CR>"
lvim.keys.normal_mode["tj"] = ":tabprev<CR>"
lvim.keys.normal_mode["tt"] = ":tabclose<CR>"
lvim.keys.normal_mode["cn"] = ":cn<CR>"
lvim.keys.normal_mode["cp"] = ":cp<CR>"
lvim.keys.normal_mode["#"] = "*"
lvim.keys.normal_mode["S"] = ":FzfLua grep_cword args<CR>"
lvim.keys.normal_mode["e"] = ":HopWord<CR>"
vim.g['test#strategy'] = 'vimux'

require 'whichkey_mapping'
require 'additional_plugins'
require 'plugin_config'
require 'auto_commands'
