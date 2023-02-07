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
lvim.keys.normal_mode["co"] = ":copen<CR>"
lvim.keys.normal_mode["cn"] = ":cn<CR>"
lvim.keys.normal_mode["cp"] = ":cp<CR>"

--- Misc
lvim.keys.normal_mode["#"] = "*"
vim.g['test#strategy'] = 'vimux'

--- Files
lvim.builtin.which_key.mappings["<space>"] = { "<cmd>Telescope find_files<CR>", "Find files" }
lvim.builtin.which_key.mappings["f"] = {
  name = "+Files",
  f = { ":Telescope find_files<CR>", "Find" },
}

--- Buffers
lvim.builtin.which_key.mappings["b"] = {
  name = "+Buffers",
  b = { ":bp<CR>", "Previous" },
  n = { ":bn<CR>", "Next" },
  f = { ":Telescope buffers<CR>", "Find" },
}
--- Search
lvim.builtin.which_key.mappings["st"] = {
  ":Telescope grep_string search=<CR>",
  "Search text"
}

--- Git
lvim.builtin.which_key.mappings["gy"] = {
  "<cmd>lua require('gitlinker').get_buf_range_url('n')",
  "Open in browser"
}

--- Test
lvim.builtin.which_key.mappings["t"] = {
  name = "+Tests",
  n = { "<cmd>TestNearest<CR>", "Test Nearest" },
  f = { "<cmd>TestFile<CR>", "Test File" },
}

lvim.plugins = {
  {
    "phaazon/hop.nvim",
    event = "BufRead",
    config = function()
      require("hop").setup()
      vim.api.nvim_set_keymap("n", "s", ":HopChar2<cr>", { silent = true })
      vim.api.nvim_set_keymap("n", "S", ":HopWord<cr>", { silent = true })
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
          add_current_line_on_normal_mode = true,
          action_callback = require("gitlinker.actions").open_in_browser,
          print_url = false,
          mappings = "<leader>gy",
        },
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
  { "kevinhwang91/nvim-bqf" }, -- Better quickfix list
}

lvim.builtin.telescope.on_config_done = function(telescope)
  local actions = require("telescope.actions")


  telescope.setup({
    defaults = {
      mappings = {
        i = {
          ["<C-u>"] = false, -- clear prompt
          ["<esc>"] = actions.close, -- quit insert mode
          ["<C-j>"] = actions.move_selection_next,
          ["<C-k>"] = actions.move_selection_previous,
        },
        n = {
          ["<C-u>"] = false, -- clear prompt
          ["<esc>"] = actions.close, -- quit insert mode
          ["<C-j>"] = actions.move_selection_next,
          ["<C-k>"] = actions.move_selection_previous,
        }
      },
      vimgrep_arguments = {
        'rg',
        '--color=never',
        '--no-heading',
        '--with-filename',
        '--line-number',
        '--column',
        '--smart-case',
        '--ignore',
        '--hidden',
        '--fixed-strings',
      },
    },
    pickers = {
      find_files = {
        theme = "ivy",
      },
      grep_string = {
        theme = "ivy",
      },
    },
  })

  -- pcall(telescope.load_extension, "ag")
end
