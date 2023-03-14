-- vim options
vim.opt.shiftwidth = 2
vim.opt.tabstop = 2
-- vim.opt.relativenumber = true
vim.opt.inccommand = "split"

-- general
lvim.log.level = "info"
lvim.format_on_save = {
  enabled = true,
  pattern = "*.lua",
  timeout = 1000,
}

lvim.colorscheme = "tokyonight"
lvim.leader = "space"
lvim.builtin.which_key.mappings["P"] = {}
lvim.builtin.which_key.mappings["d"] = {} -- Turn off debug
lvim.builtin.which_key.mappings["p"] = { "<cmd>Telescope projects<CR>", "Projects" }
lvim.builtin.which_key.mappings["<space>"] = { ":FzfLua files<CR>", "Find files" }
lvim.builtin.alpha.active = true
lvim.builtin.alpha.mode = "startify"
lvim.builtin.terminal.active = true
lvim.builtin.nvimtree.setup.view.side = "left"
lvim.builtin.nvimtree.setup.renderer.icons.show.git = false
lvim.builtin.bufferline.options.mode = "tabs"

-- Automatically install missing parsers when entering buffer
lvim.builtin.treesitter.auto_install = true
lvim.builtin.treesitter.rainbow.enable = true
--------------
-- KEY MAPS --
--------------
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

--- No parent
-- lvim.keys.normal_mode["<space><space>"] = ":FzfLua files<CR>"
lvim.keys.normal_mode["#"] = "*"
vim.g['test#strategy'] = 'vimux'

lvim.builtin.which_key.mappings["q"] = {
  name = "+Quit/Session",
  q = { ":qa<CR>", "Quit Lvim" },
  Q = { ":qa!<CR>", "Quit Lvim with no save" },
}

-- Window
lvim.builtin.which_key.mappings["w"] = {
  name = "+Window",
  d = { ":q<CR>", "Close" },
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
  f = { ":LazyGitFilterCurrentFile<CR>", "File History" },
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

---------------
--- PLUGINS ---
---------------
lvim.plugins = {
  {
    "phaazon/hop.nvim",
    event = "BufRead",
    config = function()
      require("hop").setup()
      vim.api.nvim_set_keymap("n", "<space>jj", ":HopChar2<cr>", { silent = true })
      vim.api.nvim_set_keymap("n", "<space>jp", ":HopPattern<cr>", { silent = true })
      vim.api.nvim_set_keymap("n", "<space>jl", ":HopLine<cr>", { silent = true })
    end,
  },
  { "tpope/vim-surround" },
  {
    "windwp/nvim-ts-autotag",
    config = function()
      require("nvim-ts-autotag").setup()
    end,
  },
  {
    "andymass/vim-matchup",
    event = "CursorMoved",
    config = function()
      vim.g.matchup_matchparen_offscreen = { method = "popup" }
    end,
  },
  {
    "ruifm/gitlinker.nvim",
    event = "BufRead",
    config = function()
      require("gitlinker").setup {
        opts = {
          action_callback = require("gitlinker.actions").copy_to_clipboard,
          print_url = false,
        },
        mappings = "<leader>gy"
      }
    end,
    dependencies = "nvim-lua/plenary.nvim",
  },
  { "p00f/nvim-ts-rainbow" },
  {
    "karb94/neoscroll.nvim",
    event = "WinScrolled",
    config = function()
      require('neoscroll').setup({
        mappings = { '<C-u>', '<C-d>' },
        hide_cursor = true, -- Hide cursor while scrolling
        stop_eof = true, -- Stop at <EOF> when scrolling downwards
        use_local_scrolloff = false, -- Use the local scope of scrolloff instead of the global scope
        respect_scrolloff = false, -- Stop scrolling when the cursor reaches the scrolloff margin of the file
        cursor_scrolls_alone = true, -- The cursor will keep on scrolling even if the window cannot scroll further
        easing_function = nil, -- Default easing function
        pre_hook = nil, -- Function to run before the scrolling animation starts
        post_hook = nil, -- Function to run after the scrolling animation ends
      })
    end
  },
  { "tpope/vim-repeat" },
  { "wakatime/vim-wakatime" },
  { "tpope/vim-projectionist" },
  { "vim-test/vim-test", dependencies = "preservim/vimux" },
  { "tiagovla/scope.nvim" }, -- Using tab
  {
    "kevinhwang91/nvim-bqf",
    event = { "BufRead", "BufNew" },
    config = function()
      require("bqf").setup({
        auto_enable = true,
        preview = {
          win_height = 12,
          win_vheight = 12,
          delay_syntax = 80,
          border_chars = { "┃", "┃", "━", "━", "┏", "┓", "┗", "┛", "█" },
        },
        func_map = {
          vsplit = "",
          ptogglemode = "z,",
          stoggleup = "",
        },
        filter = {
          fzf = {
            action_for = { ["ctrl-s"] = "split" },
            extra_opts = { "--bind", "ctrl-o:toggle-all", "--prompt", "> " },
          },
        },
      })
    end,
  }, -- Better quickfix list
  { "ibhagwan/fzf-lua",
    config = function()
      require("fzf-lua").setup({
        grep = {
          rg_opts = "--sort-files --hidden --column --line-number --no-heading --color=always --smart-case -g '!{.git,node_modules}/*'",
          rg_glob         = true,       -- enable glob parsing by default to all grep providers? (default:false)
          glob_flag       = "--iglob",  -- for case sensitive globs use '--glob'
          glob_separator  = "%s%-%-"    -- query separator pattern (lua): ' --'
        },
      })
    end
  },
  { "kdheepak/lazygit.nvim" },
  { "nvim-treesitter/nvim-treesitter-textobjects" },
  { "MattesGroeger/vim-bookmarks" },
  { "roobert/search-replace.nvim", config = function() require('search-replace').setup() end },
  { "davidgranstrom/nvim-markdown-preview" }
}

lvim.builtin.treesitter.on_config_done = function()
  require 'nvim-treesitter.configs'.setup {
    textobjects = {
      select = {
        enable = true,
        lookahead = true,
        keymaps = {
          ["af"] = { query = "@function.outer", desc = "Select outer function" },
          ["if"] = { query = "@function.inner", desc = "Select inner function" },
          ["ac"] = { query = "@class.outer", desc = "Select outer class" },
          ["ic"] = { query = "@class.inner", desc = "Select inner class" },
        },
        selection_modes = {
          ['@parameter.outer'] = 'v', -- charwise
          ['@function.outer'] = 'V', -- linewise
          ['@class.outer'] = '<c-v>', -- blockwise
        },
        include_surrounding_whitespace = true,
      },
    },
  }
end
-- lvim.builtin.telescope.on_config_done = function(telescope)
-- pcall(telescope.load_extension, "vim_bookmarks")
-- end
