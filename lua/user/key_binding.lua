-- Remove default key mapping
lvim.keys.normal_mode["<C-h>"] = false
lvim.keys.normal_mode["<C-j>"] = false
lvim.keys.normal_mode["<C-k>"] = false
lvim.keys.normal_mode["<C-l>"] = false

lvim.builtin.which_key.mappings["P"] = {}
lvim.builtin.which_key.mappings["c"] = {}
lvim.builtin.which_key.mappings["d"] = {} -- Turn off debug
lvim.builtin.which_key.mappings["x"] = { ":Legendary<CR>", "M-x fuzzy" }
lvim.builtin.which_key.mappings["p"] = { "<cmd>Telescope projects<CR>", "Projects" }
lvim.builtin.which_key.mappings["<space>"] = { ":Telescope find_files<CR>", "Find files" }
lvim.builtin.which_key.mappings["e"] = { ":RnvimrToggle<CR>", "Explorer" }

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
lvim.keys.insert_mode["jk"] = "<esc>"

-- Quickfix
lvim.keys.normal_mode["cj"] = ":cnext<CR>"
lvim.keys.normal_mode["ck"] = ":cprev<CR>"
lvim.keys.normal_mode["co"] = ":copen<CR>"

---- Tab navigator
lvim.keys.normal_mode["tn"] = ":tabnew<CR>"
lvim.keys.normal_mode["tk"] = ":tabnext<CR>"
lvim.keys.normal_mode["tj"] = ":tabprev<CR>"
lvim.keys.normal_mode["tt"] = ":tabclose<CR>"
lvim.keys.normal_mode["tl"] = "<cmd>lua require('telescope-tabs').list_tabs()<cr>"

-- Move line
-- lvim.keys.normal_mode["<C-j>"] = ":m .+1<CR>=="
-- lvim.keys.normal_mode["<C-k>"] = ":m .-2<CR>=="
-- lvim.keys.visual_mode["<C-j>"] = ":m '>+1<CR>gv=gv"
-- lvim.keys.visual_mode["<C-k>"] = ":m '<-2<CR>gv=gv"

lvim.keys.normal_mode["#"] = "*"
lvim.keys.normal_mode["U"] = ":UndotreeToggle<CR>"

-- Keep cursor in the middle of the screen
lvim.keys.normal_mode["n"] = "nzzzv"
lvim.keys.normal_mode["N"] = "Nzzzv"
-- lvim.keys.normal_mode["<C-d>"] = "<C-d>zz"
-- lvim.keys.normal_mode["<C-u>"] = "<C-u>zz"

lvim.builtin.which_key.mappings["q"] = {
  name = "+Quit/Session",
  q = { "<cmd>lua require('user.functions').smart_quit('all')<CR>", "Quit Lvim" },
  Q = { ":qa!<CR>", "Quit Lvim with no save" },
}

-- Window
lvim.builtin.which_key.mappings["w"] = {
  name = "+Window",
  w = { "<cmd>lua require('nvim-window').pick()<CR>", "Pick window" },
  d = { "<cmd>lua require('user.functions').smart_quit('buffer')<CR>", "Close" },
  h = { ":wincmd h<CR>", "Navigate left" },
  j = { ":wincmd j<CR>", "Navigate down" },
  k = { ":wincmd k<CR>", "Navigate up" },
  l = { ":wincmd l<CR>", "Navigate right" },
  v = { ":wincmd v<CR>", "Vertical split" },
  s = { ":wincmd s<CR>", "Horizontal split" },
  f = { ":ZenMode<CR>", "Focus Toggle" },
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
  f = { "<cmd>Telescope agrolens query=functions theme=ivy<cr>", "Functions" },
  F = { "<cmd>Telescope agrolens query=callings theme=ivy<cr>", "Callings functions" },
  g = { ":lua require('telescope').extensions.live_grep_args.live_grep_args()<CR>", "Grep" },
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
  r = {
    namne = "+Rails",
    m = { ":Telescope find_files cwd=app/models<CR>", "Find models" },
    s = { ":Telescope find_files cwd=app/services<CR>", "Find services" },
    c = { ":Telescope find_files cwd=app/controllers<CR>", "Find controllers" },
    a = { ":Telescope find_files cwd=app/api<CR>", "Find api" },
    p = { ":Telescope find_files cwd=app/policies<CR>", "Find policies" },
    i = { ":Telescope find_files cwd=app/mailers<CR>", "Find mailers" },
  },
}

-- Jumping
lvim.builtin.which_key.mappings["j"] = {
  name = "+Jump",
  j = { ":HopChar2<cr>", "Jump 2 chars" },
  p = { ":HopPattern<cr>", "Jump pattern" },
  l = { ":HopLine<cr>", "Jump line" },
  r = { ":Telescope jumplist<CR>", "Jump list" },
  w = { "<cmd>lua require('nvim-window').pick()<CR>", "Jump window" },
}

-- Notes
lvim.builtin.which_key.mappings["n"] = {
  name = "+Notes",
  p = { ":Telekasten panel<CR>", "Open Panel" },
  f = { ":Telekasten find_notes<CR>", "Find notes" },
  s = { ":Telekasten search_notes<CR>", "Search notes" },
  n = { ":Telekasten new_note<CR>", "New note" },
  t = { ":Telekasten goto_today<CR>", "Today notes" },
  w = { ":Telekasten goto_thisweek<CR>", "This Week notes" },
}

-- ToggleTerm
lvim.builtin.which_key.mappings["c"] = {
  name = "+CMD",
  h = { "1:ToggleTerm<CR>", "Open first term" },
  j = { "2:ToggleTerm<CR>", "Open second term" },
  k = { "3:ToggleTerm<CR>", "Open third term" },
  l = { "4:ToggleTerm<CR>", "Open fourth term" },
}

-- LSP
lvim.builtin.which_key.mappings["lE"] = { ":Telescope quickfixhistory<CR>", "Telescope quickfix history" }

local m_opts = {
  mode = "n",     -- NORMAL mode
  prefix = "m",
  buffer = nil,   -- Global mappings. Specify a buffer number for buffer local mappings
  silent = true,  -- use `silent` when creating keymaps
  noremap = true, -- use `noremap` when creating keymaps
  nowait = true,  -- use `nowait` when creating keymaps
}

local status_ok, which_key = pcall(require, "which-key")
if not status_ok then
  return
end

local m_mappings = {
  a = { "<cmd>:BookmarkAnnotate<cr>", "Annotate" },
  c = { "<cmd>:BookmarkClear<cr>", "Clear" },
  t = { "<cmd>:BookmarkToggle<cr>", "Toggle" },
  x = { "<cmd>:BookmarkClearAll<cr>", "Clear All" },
  j = { "<cmd>:BookmarkNext<cr>", "Next" },
  k = { "<cmd>:BookmarkPrev<cr>", "Prev" },
  s = { "<cmd>:BookmarkShowAll<cr>", "Show All" },
  -- Harpoon
  m = { '<cmd>lua require("harpoon.mark").add_file()<cr>', "Harpoon add file" },
  f = { "<cmd>Telescope harpoon marks<cr>", "Harpoon search Files" },
  [";"] = { '<cmd>lua require("harpoon.ui").toggle_quick_menu()<cr>', "Harpoon UI" },
}

which_key.register(m_mappings, m_opts)
