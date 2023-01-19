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

lvim.keys.normal_mode["<Leader><Leader>"] = ":FzfLua files<CR>"
lvim.keys.insert_mode["jj"] = "<esc>"
lvim.keys.normal_mode["tk"] = ":tabnext<CR>"
lvim.keys.normal_mode["tj"] = ":tabprev<CR>"
lvim.keys.normal_mode["tt"] = ":tabclose<CR>"
lvim.keys.normal_mode["cn"] = ":cn<CR>"
lvim.keys.normal_mode["cp"] = ":cp<CR>"
lvim.keys.normal_mode["#"] = "*"
vim.g['test#strategy'] = 'vimux'

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

------------------------
-- ADDITIONAL PLUGINS --
------------------------
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
  {
    "rmagatti/goto-preview",
    config = function()
      require('goto-preview').setup {
        width = 120; -- Width of the floating window
        height = 25; -- Height of the floating window
        default_mappings = true; -- Bind default mappings
        debug = false; -- Print debug information
        opacity = nil; -- 0-100 opacity level of the floating window where 100 is fully transparent.
        post_open_hook = nil -- A function taking two arguments, a buffer and a window to be ran as a hook.
      }
    end
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
  { "npxbr/glow.nvim", ft = { "markdown" } },
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
  { 'ckolkey/ts-node-action', dependencies = { 'nvim-treesitter' }, opts = {} },
  { 'ibhagwan/fzf-lua' },
}

---------------------
-- PLUGINS CONFIGS --
---------------------
-- Change theme settings
lvim.colorscheme = "tokyonight"

-- Lvim builtin configuration
lvim.builtin.alpha.active = true
lvim.builtin.alpha.mode = "startify"
lvim.builtin.terminal.active = true
lvim.builtin.nvimtree.setup.view.side = "left"
lvim.builtin.nvimtree.setup.renderer.icons.show.git = false
lvim.builtin.bufferline.options.mode = "tabs" -- set to "tabs" to only show tabpages instead

-- Automatically install missing parsers when entering buffer
lvim.builtin.treesitter.auto_install = true
lvim.builtin.treesitter.rainbow.enable = true

-- Disable core plugins
lvim.builtin.telescope.active = false
lvim.builtin.project.active = false

-------------------
-- AUTO COMMANDS --
-------------------
-- vim.api.nvim_create_autocmd("FileType", {
--   pattern = "zsh",
--   callback = function()
--     -- let treesitter use bash highlight for zsh files as well
--     require("nvim-treesitter.highlight").attach(0, "bash")
--   end,
-- })
