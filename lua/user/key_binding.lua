lvim.builtin.which_key.mappings["P"] = {}
lvim.builtin.which_key.mappings["d"] = {} -- Turn off debug
lvim.builtin.which_key.mappings["p"] = { "<cmd>Telescope projects<CR>", "Projects" }
lvim.builtin.which_key.mappings["<space>"] = { ":FzfLua files<CR>", "Find files" }
lvim.builtin.which_key.mappings["/"] = { ":FzfLua grep_visual<CR>", "Find text in project" }

---- Undo break points
lvim.keys.insert_mode['_'] = '_<C-g>u'
lvim.keys.insert_mode[','] = ',<C-g>u'
lvim.keys.insert_mode['.'] = '.<C-g>u'
lvim.keys.insert_mode['!'] = '!<C-g>u'
lvim.keys.insert_mode['?'] = '?<C-g>u'
lvim.keys.insert_mode['['] = '[<C-g>u'
lvim.keys.insert_mode[']'] = ']<C-g>u'
lvim.keys.insert_mode['{'] = '{<C-g>u'
lvim.keys.insert_mode['}'] = '}<C-g>u'
lvim.keys.insert_mode['('] = '(<C-g>u'
lvim.keys.insert_mode[')'] = ')<C-g>u'
lvim.keys.insert_mode[' '] = ' <C-g>u'
lvim.keys.insert_mode["jj"] = "<esc>"

---- Tab navigator
lvim.keys.normal_mode["tk"] = ":tabnext<CR>"
lvim.keys.normal_mode["tj"] = ":tabprev<CR>"
lvim.keys.normal_mode["tt"] = ":tabclose<CR>"

--- Quickfix
lvim.keys.normal_mode["co"] = ":copen<CR>"
lvim.keys.normal_mode["cc"] = ":cclose<CR>"
lvim.keys.normal_mode["cn"] = ":cn<CR>"
lvim.keys.normal_mode["cp"] = ":cp<CR>"

lvim.keys.normal_mode["#"] = "*"
lvim.keys.normal_mode["<space>;"] = "gcc"
lvim.keys.visual_mode["<space>;"] = "gc"

lvim.builtin.which_key.mappings["q"] = {
  name = "+Quit/Session",
  q = { "<cmd>lua require('user.functions').smart_quit('all')<CR>", "Quit Lvim" },
  Q = { ":qa!<CR>", "Quit Lvim with no save" },
}

-- Window
lvim.builtin.which_key.mappings["w"] = {
  name = "+Window",
  d = { "<cmd>lua require('user.functions').smart_quit('buffer')<CR>", "Close" },
  h = { "<C-w>h", "Navigate left" },
  j = { "<C-w>j", "Navigate down" },
  k = { "<C-w>k", "Navigate up" },
  l = { "<C-w>l", "Navigate right" },
  v = { "<C-w>v", "Vertical split" },
  s = { "<C-w>s", "Horizontal split" },
}

--- File
lvim.builtin.which_key.mappings["f"] = {
  name = "+File",
  s = { ":w<CR>", "Save" },
  f = { ":FzfLua files<CR>", "Find" },
  r = { ":FzfLua oldfiles<CR>", "Recent" },
  y = { ":let @+ = expand('%')<CR>", "Yank file path" },
  Y = { ":let @+ = join([expand('%'),  line('.')], ':')<CR>", "Yank file path with line number" },
  t = { ":AV<CR>", "Open test file" },
}

--- Buffer
lvim.builtin.which_key.mappings["b"] = {
  name = "+Buffer",
  s = { ":w<CR>", "Save" },
  p = { ":bp<CR>", "Previous" },
  n = { ":bn<CR>", "Next" },
  b = { ":FzfLua buffers<CR>", "Find" },
}

--- Search
lvim.builtin.which_key.mappings["s"] = {
  name = "+Search",
  c = { ":FzfLua grep_cword<CR>", "Current word" },
  k = { ":FzfLua keymaps<CR>", "Keymaps" },
  h = { ":FzfLua help_tags<CR>", "Help tags" },
  b = { ":FzfLua blines<CR>", "Current buffer lines" },
  l = { ":FzfLua live_grep<CR>", "Live grep" },
  t = { ":FzfLua grep_visual<CR>", "Text" },
}

--- Replace
lvim.builtin.which_key.mappings["r"] = {
  name = "+Replace",
  o = { ":SearchReplaceSingleBufferOpen<CR>", "Open" },
  w = { ":SearchReplaceSingleBufferCWord<CR>", "word" },
  W = { ":SearchReplaceSingleBufferCWORD<CR>", "Word" },
  e = { ":SearchReplaceSingleBufferCExpr<CR>", "Expr" },
  f = { ":SearchReplaceSingleBufferCFile<CR>", "File" },
}

--- Git
lvim.builtin.which_key.mappings["g"] = {
  name = "+Git",
  g = { ":LazyGit<CR>", "Open LazyGit" },
  y = { "Copy code URL" },
  b = { ":Gitsigns blame_line<CR>", "Blame" },
  f = { ":LazyGitFilterCurrentFile<CR>", "Current File History" },
  h = { ":LazyGitFilter<CR>", "History" },
}

--- Test
lvim.builtin.which_key.mappings["t"] = {
  name = "+Test",
  n = { "<cmd>TestNearest<CR>", "Test Nearest" },
  f = { "<cmd>TestFile<CR>", "Test File" },
}
--- Misc
lvim.builtin.which_key.mappings["m"] = {
  name = "+Misc",
  j = { ":FzfLua jumps<CR>", "Jumps" },
  r = { ":FzfLua resume<CR>", "Resume last command" },
  s = { ":FzfLua spell_suggest<CR>", "Spell suggest" },
  m = { ":MarkdownPreview solarized-light<CR>", "Markdown Preview" },
  d = { "<s-o>byebug<ESC>", "Add debug point" },
}

lvim.builtin.which_key.mappings["j"] = {
  name = "+Jump",
  j = "Jump 2 Chars",
  p = "Jump Pattern",
  l = "Jump Line",
  r = { ":FzfLua jumps<CR>","Jump Recent" },
}
