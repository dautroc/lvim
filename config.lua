-- vim options
vim.opt.shiftwidth = 2
vim.opt.tabstop = 2
vim.opt.relativenumber = true

-- general
lvim.log.level = "info"
lvim.format_on_save = {
  enabled = true,
  pattern = "*.lua",
  timeout = 1000,
}

lvim.colorscheme = "tokyonight"
lvim.leader = "space"
lvim.builtin.which_key.mappings["P"] = { "<cmd>Telescope projects<CR>", "Projects" }
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
-- lvim.keys.normal_mode["co"] = ":copen<CR>"
-- lvim.keys.normal_mode["cc"] = ":cclose<CR>"
-- lvim.keys.normal_mode["cn"] = ":cn<CR>"
-- lvim.keys.normal_mode["cp"] = ":cp<CR>"

--- Misc
lvim.keys.normal_mode["<space><space>"] = ":FzfLua files<CR>"
lvim.keys.normal_mode["#"] = "*"
vim.g['test#strategy'] = 'vimux'

--- File
lvim.builtin.which_key.mappings["f"] = {
  name = "+File",
  f = { ":FzfLua files<CR>", "Find" },
  r = { ":FzfLua oldfiles<CR>", "Recent" },
  a = { ":lua require('harpoon.mark').add_file()<CR>", "Add bookmark" },
  b = { ":lua require('harpoon.ui').toggle_quick_menu()<CR>", "Open bookmark" },
  t = {
    name = "+Test",
    n = { "<cmd>TestNearest<CR>", "Test Nearest" },
    f = { "<cmd>TestFile<CR>", "Test File" },
  }
}

--- Buffer
lvim.builtin.which_key.mappings["b"] = {
  name = "+Buffer",
  b = { ":bp<CR>", "Previous" },
  n = { ":bn<CR>", "Next" },
  f = { ":FzfLua buffers<CR>", "Find" },
  y = { ":let @+ = expand('%')<CR>", "Copy relative path" }
}
--- Search
lvim.builtin.which_key.mappings["s"] = {
  name = "+Search",
  t = { ":FzfLua grep_visual<CR>", "Text" },
  c = { ":FzfLua grep_cword<CR>", "Current word" },
  k = { ":FzfLua keymaps<CR>", "Keymaps" },
  h = { ":FzfLua help_tags<CR>", "Help tags" },
  b = { ":FzfLua blines<CR>", "Current buffer lines" },
  l = { ":FzfLua live_grep<CR>", "Live grep" },
  r = {
    name = "+SearchReplaceSingleBuffer",
    o = { ":SearchReplaceSingleBufferOpen<CR>", "Open" },
    w = { ":SearchReplaceSingleBufferCWord<CR>", "word" },
    W = { ":SearchReplaceSingleBufferCWORD<CR>", "Word" },
    e = { ":SearchReplaceSingleBufferCExpr<CR>", "Expr" },
    f = { ":SearchReplaceSingleBufferCFile<CR>", "File" },
  },
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
      vim.api.nvim_set_keymap("n", "<Tab>", ":HopChar2<cr>", { silent = true })
      -- vim.api.nvim_set_keymap("n", "<Tab>", ":HopWord<cr>", { silent = true })
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
  { "npxbr/glow.nvim", ft = { "markdown" } }, -- Preview markdown
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
  { "ibhagwan/fzf-lua" },
  { "kdheepak/lazygit.nvim" },
  { "nvim-treesitter/nvim-treesitter-textobjects" },
  { "ThePrimeagen/harpoon", dependencies = { "nvim-lua/plenary.nvim" } },
  { "MattesGroeger/vim-bookmarks" },
  { "kevinhwang91/nvim-hlslens", config = function() require('hlslens').setup() end },
  { "roobert/search-replace.nvim", config = function() require('search-replace').setup() end },
}

-- lvim.builtin.telescope.on_config_done = function(telescope)
-- pcall(telescope.load_extension, "vim_bookmarks")
-- end

lvim.builtin.treesitter.on_config_done = function()
  require 'nvim-treesitter.configs'.setup {
    textobjects = {
      select = {
        enable = true,

        -- Automatically jump forward to textobj, similar to targets.vim
        lookahead = true,

        keymaps = {
          -- You can use the capture groups defined in textobjects.scm
          ["af"] = { query = "@function.outer", desc = "Select outer function" },
          ["if"] = { query = "@function.inner", desc = "Select inner function" },
          ["ac"] = { query = "@class.outer", desc = "Select outer class" },
          ["ic"] = { query = "@class.inner", desc = "Select inner class" },
        },
        -- You can choose the select mode (default is charwise 'v')
        --
        -- Can also be a function which gets passed a table with the keys
        -- * query_string: eg '@function.inner'
        -- * method: eg 'v' or 'o'
        -- and should return the mode ('v', 'V', or '<c-v>') or a table
        -- mapping query_strings to modes.
        selection_modes = {
          ['@parameter.outer'] = 'v', -- charwise
          ['@function.outer'] = 'V', -- linewise
          ['@class.outer'] = '<c-v>', -- blockwise
        },
        -- If you set this to `true` (default is `false`) then any textobject is
        -- extended to include preceding or succeeding whitespace. Succeeding
        -- whitespace has priority in order to act similarly to eg the built-in
        -- `ap`.
        --
        -- Can also be a function which gets passed a table with the keys
        -- * query_string: eg '@function.inner'
        -- * selection_mode: eg 'v'
        -- and should return true of false
        include_surrounding_whitespace = true,
      },
    },
  }
end
