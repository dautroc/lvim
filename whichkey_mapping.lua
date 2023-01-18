lvim.builtin.which_key.mappings["ln"] = { "<cmd>NodeAction<cr>", "Node Action" }
lvim.builtin.which_key.mappings["f"] = {
  name = "+File",
  e = { "<cmd>NvimTreeFindFile<CR>", "Find file in explorer" },
  y = { "<cmd>let @+=expand('%')<CR>", "Copy file path" },
  b = { "<cmd>FzfLua buffers<CR>", "Find buffers" },
  l = { "<cmd>FzfLua blines<CR>", "Find lines" },
  f = { "<cmd>FzfLua grep_cword<CR>", "Find grep cword" },
}
lvim.builtin.which_key.mappings["gy"] = {
  "<cmd>lua require('gitlinker').get_buf_range_url('n')",
  "Open in browser"
}
lvim.builtin.which_key.mappings["t"] = {
  name = "+Tests",
  n = { "<cmd>TestNearest<CR>", "Test Nearest" },
  f = { "<cmd>TestFile<CR>", "Test File" },
}
lvim.builtin.which_key.mappings["sh"] = { "<cmd>FzfLua help_tags<cr>", "Search help" }
lvim.builtin.which_key.mappings["sk"] = { "<cmd>FzfLua keymaps<cr>", "Search keymaps" }
lvim.builtin.which_key.mappings["bb"] = { "<cmd>bp<CR>", "Previous" }
lvim.builtin.which_key.mappings["bn"] = { "<cmd>bn<CR>", "Next" }
