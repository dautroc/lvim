lvim.plugins = {
  {
    "phaazon/hop.nvim",
    event = "BufRead",
    config = function()
      require("hop").setup()
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
        hide_cursor = true,          -- Hide cursor while scrolling
        stop_eof = true,             -- Stop at <EOF> when scrolling downwards
        use_local_scrolloff = false, -- Use the local scope of scrolloff instead of the global scope
        respect_scrolloff = false,   -- Stop scrolling when the cursor reaches the scrolloff margin of the file
        cursor_scrolls_alone = true, -- The cursor will keep on scrolling even if the window cannot scroll further
        easing_function = nil,       -- Default easing function
        pre_hook = nil,              -- Function to run before the scrolling animation starts
        post_hook = nil,             -- Function to run after the scrolling animation ends
      })
    end
  },
  { "tpope/vim-repeat" },
  { "wakatime/vim-wakatime" },
  { "tpope/vim-projectionist" },
  {
    "vim-test/vim-test",
    dependencies = "preservim/vimux"
  },
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
          vsplit = "<C-v>",
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
  { "kdheepak/lazygit.nvim" },
  { "nvim-treesitter/nvim-treesitter-textobjects" },
  { "MattesGroeger/vim-bookmarks" },
  {
    "roobert/search-replace.nvim",
    config = function() require('search-replace').setup() end
  },
  { "davidgranstrom/nvim-markdown-preview" },
  -- { "jackMort/ChatGPT.nvim",
  --   config = function()
  --     require("chatgpt").setup()
  --   end,
  --   dependencies = {
  --     "MunifTanjim/nui.nvim",
  --     "nvim-lua/plenary.nvim",
  --     "nvim-telescope/telescope.nvim"
  --   }
  -- }
  { "ThePrimeagen/harpoon" },
  {
    'LukasPietzschmann/telescope-tabs',
    dependencies = { 'nvim-telescope/telescope.nvim' },
    config = function()
      require 'telescope-tabs'.setup()
    end
  },
  {
    "zbirenbaum/copilot.lua",
    cmd = "Copilot",
    event = "InsertEnter",
    config = function()
      require("copilot").setup({})
    end,
  },
  {
    "zbirenbaum/copilot-cmp",
    dependencies = { "copilot.lua" },
    config = function()
      require("copilot_cmp").setup()
    end
  },
  {
    "renerocksai/telekasten.nvim",
    dependencies = { "nvim-telescope/telescope.nvim" },
    config = function()
      require('telekasten').setup({ home = vim.fn.expand("~/Dropbox/notes") })
    end,
  },
  { "itchyny/calendar.vim" },
  {
    "yorickpeterse/nvim-window",
    config = function()
      require('nvim-window').setup({
        -- The characters available for hinting windows.
        chars = {
          'h', 'j', 'k', 'l', ';', 'm', 'n'
        },
        -- A group to use for overwriting the Normal highlight group in the floating
        -- window. This can be used to change the background color.
        normal_hl = '@text.todo',
        -- The highlight group to apply to the line that contains the hint characters.
        -- This is used to make them stand out more.
        hint_hl = 'Bold',
        -- The border style to use for the floating window.
        border = 'single'
      })
    end
  },
  {
    "beauwilliams/focus.nvim",
    config = function()
      require("focus").setup({
        excluded_buftypes = { "help", "nofile", "prompt", "quickfix", "terminal", "popup" },
        autoresize = false,
        enable = true,
        signcolumn = false,
        quickfixheight = 20
      })
    end
  },
  {
    'm-demare/hlargs.nvim',
    dependencies = { 'nvim-treesitter/nvim-treesitter' },
    config = function()
      require('hlargs').setup()
    end
  },
  { "desdic/agrolens.nvim" },
  { 'nvim-telescope/telescope-fzf-native.nvim', build = 'make' },
  {
    "nvim-telescope/telescope.nvim",
    dependencies = {
      { "nvim-telescope/telescope-live-grep-args.nvim" },
    },
  },
  { 'kevinhwang91/nvim-ufo', dependencies = 'kevinhwang91/promise-async' },
  { 'mbbill/undotree' },
  {
    'mrjones2014/legendary.nvim',
    -- sqlite is only needed if you want to use frecency sorting
    dependencies = 'kkharji/sqlite.lua'
  },
  { 'stevearc/dressing.nvim' },
  { 'echasnovski/mini.nvim', version = false }

}
