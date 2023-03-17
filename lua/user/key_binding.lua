lvim.builtin.which_key.mappings["P"] = {}
lvim.builtin.which_key.mappings["d"] = {} -- Turn off debug
lvim.builtin.which_key.mappings["p"] = { "<cmd>Telescope projects<CR>", "Projects" }
lvim.builtin.which_key.mappings["<space>"] = { ":Telescope find_files<CR>", "Find files" }

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
lvim.keys.normal_mode["tn"] = ":tabnew<CR>"
lvim.keys.normal_mode["tk"] = ":tabnext<CR>"
lvim.keys.normal_mode["tj"] = ":tabprev<CR>"
lvim.keys.normal_mode["tt"] = ":tabclose<CR>"
lvim.keys.normal_mode["tl"] = "<cmd>lua require('telescope-tabs').list_tabs()<cr>"

-- Move line
lvim.keys.normal_mode["<C-j>"] = ":m .+1<CR>=="
lvim.keys.normal_mode["<C-k>"] = ":m .-2<CR>=="
lvim.keys.visual_mode["<C-j>"] = ":m '>+1<CR>gv=gv"
lvim.keys.visual_mode["<C-k>"] = ":m '<-2<CR>gv=gv"

lvim.keys.normal_mode["#"] = "*"

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
  e = { ":NvimTreeFindFile<CR>", "Find file in Explorer" },
  s = { ":w<CR>", "Save" },
  f = { "<cmd>Telescope find_files<cr>", "Find files" },
  r = { "<cmd>Telescope oldfiles<cr>", "Recent files" },
  y = { ":let @+ = expand('%')<CR>", "Yank file path" },
  Y = { ":let @+ = join([expand('%'),  line('.')], ':')<CR>", "Yank file path with line number" },
  t = { 
    name = "Open test file",
    a = { ":A<CR>", "Open" },
    v = { ":AV<CR>", "Open vsplit" },
    s = { ":AS<CR>", "Open vsplit" },
    t = { ":AT<CR>", "Open in new tab" },
  },
}

--- Buffer
lvim.builtin.which_key.mappings["b"] = {
  name = "+Buffer",
  s = { ":w<CR>", "Save" },
  p = { ":bp<CR>", "Previous" },
  n = { ":bn<CR>", "Next" },
  b = { ":Telescope buffers<CR>", "Find" },
}

--- Search
lvim.builtin.which_key.mappings["s"] = {
  name = "+Search",
  b = { "<cmd>Telescope current_buffer_fuzzy_find<cr>", "Fuzzy find current buffer" },
  s = { "<cmd>Telescope grep_string<cr>", "Find String" },
  h = { "<cmd>Telescope help_tags<cr>", "Help" },
  t = { "<cmd>Telescope live_grep<cr>", "Find Text" },
  k = { "<cmd>Telescope keymaps<cr>", "Keymaps" },
  c = { "<cmd>Telescope colorscheme<cr>", "Colorscheme" },
  C = { "<cmd>Telescope commands<cr>", "Commands" },
  H = { "<cmd>Telescope highlights<cr>", "Highlights" },
  l = { "<cmd>Telescope resume<cr>", "Last Search" },
  r = { "<cmd>Telescope registers<cr>", "Registers" },
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
  s = { ":Telescope spell_suggest<CR>", "Spell suggest" },
  m = { ":MarkdownPreview solarized-light<CR>", "Markdown Preview" },
  d = { "<s-o>byebug<ESC>", "Add debug point" },
}

-- Jumping
lvim.builtin.which_key.mappings["j"] = {
  name = "+Jump",
  j = { ":HopChar2<cr>", "Jump 2 chars" },
  p = { ":HopPattern<cr>", "Jump pattern" },
  l = { ":HopLine<cr>", "Jump line" },
  r = { ":Telescope jumplist<CR>","Jump list" },
}

-- Orgmode
-- lvim.builtin.which_key.mappings["o"] = {
--   name = "+Orgmode",
--   a = { "Org agenda" },
--   c = { "Org capture" },
-- }

-- Copilot
lvim.builtin.which_key.mappings["c"] = {
  name = "+Copilot",
  c = { ":Copilot panel<CR>", "Open Panel" },
}

local m_opts = {
  mode = "n", -- NORMAL mode
  prefix = "m",
  buffer = nil, -- Global mappings. Specify a buffer number for buffer local mappings
  silent = true, -- use `silent` when creating keymaps
  noremap = true, -- use `noremap` when creating keymaps
  nowait = true, -- use `nowait` when creating keymaps
}

local status_ok, which_key = pcall(require, "which-key")
if not status_ok then
  return
end

local m_mappings = {
  a = { "<cmd>silent BookmarkAnnotate<cr>", "Annotate" },
  c = { "<cmd>silent BookmarkClear<cr>", "Clear" },
  t = { "<cmd>silent BookmarkToggle<cr>", "Toggle" },
  x = { "<cmd>BookmarkClearAll<cr>", "Clear All" },
  j = { "<cmd>silent BookmarkNext<cr>", "Next" },
  k = { "<cmd>silent BookmarkPrev<cr>", "Prev" },
  s = { "<cmd>silent BookmarkShowAll<cr>", "Show All" },

  -- Harpoon
  m = { '<cmd>lua require("harpoon.mark").add_file()<cr>', "Harpoon add file" },
  f = { "<cmd>Telescope harpoon marks<cr>", "Harpoon search Files" },
  [";"] = { '<cmd>lua require("harpoon.ui").toggle_quick_menu()<cr>', "Harpoon UI" },
}

which_key.register(m_mappings, m_opts)
