lvim.builtin.which_key.mappings["lA"] = { "<cmd>NodeAction<cr>", "Node Action" }
lvim.builtin.which_key.mappings["f"] = {
  name = "+File",
  e = { "<cmd>NvimTreeFindFile<CR>", "Find file in explorer" },
  y = { "<cmd>let @+=expand('%')<CR>", "Copy file path" },
  b = { "<cmd>FzfLua buffers<CR>", "Find buffers" },
  o = { "<cmd>FzfLua oldfiles<CR>", "Find old files" },
  f = { "<cmd>FzfLua files<CR>", "Find files" },
}
lvim.builtin.which_key.mappings["s"] = {
  name = "+Search",
  h = { "<cmd>FzfLua help_tags<cr>", "Search help" },
  k = { "<cmd>FzfLua keymaps<cr>", "Search keymaps" },
  t = { "<cmd>FzfLua grep_cword<cr>", "Search text" },
  l = { "<cmd>FzfLua blines<CR>", "Search buffer lines" },
  c = { "<cmd>FzfLua grep_cword args<CR>", "Search current text" },
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
lvim.builtin.which_key.mappings["sk"] = { "<cmd>FzfLua keymaps<cr>", "Search keymaps" }


lvim.builtin.which_key.mappings["bb"] = { "<cmd>bp<CR>", "Previous" }
lvim.builtin.which_key.mappings["bn"] = { "<cmd>bn<CR>", "Next" }
