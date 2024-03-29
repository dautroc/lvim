lvim.builtin.telescope.defaults.file_ignore_patterns = {
  ".git/",
  "target/",
  "docs/",
  "vendor/*",
  "%.lock",
  "__pycache__/*",
  "%.sqlite3",
  "%.ipynb",
  "node_modules/*",
  -- "%.jpg",
  -- "%.jpeg",
  -- "%.png",
  "%.svg",
  "%.otf",
  "%.ttf",
  "%.webp",
  ".dart_tool/",
  ".github/",
  ".gradle/",
  ".idea/",
  ".settings/",
  ".vscode/",
  "__pycache__/",
  "build/",
  "env/",
  "gradle/",
  "node_modules/",
  "%.pdb",
  "%.dll",
  "%.class",
  "%.exe",
  "%.cache",
  "%.ico",
  "%.pdf",
  "%.dylib",
  "%.jar",
  "%.docx",
  "%.met",
  "smalljre_*/*",
  ".vale/",
  "%.burp",
  "%.mp4",
  "%.mkv",
  "%.rar",
  "%.zip",
  "%.7z",
  "%.tar",
  "%.bz2",
  "%.epub",
  "%.flac",
  "%.tar.gz",
}
local _, actions = pcall(require, "telescope.actions")
lvim.builtin.telescope.defaults.mappings = {
  -- for input mode
  i = {
    ["<C-n>"] = actions.cycle_history_next,
    ["<C-p>"] = actions.cycle_history_prev,
    ["<C-j>"] = actions.move_selection_next,
    ["<C-k>"] = actions.move_selection_previous,
    ["<C-b>"] = actions.results_scrolling_up,
    ["<C-f>"] = actions.results_scrolling_down,
    ["<C-c>"] = actions.close,
    ["<Down>"] = actions.move_selection_next,
    ["<Up>"] = actions.move_selection_previous,
    ["<CR>"] = actions.select_default,
    ["<C-s>"] = actions.select_horizontal,
    ["<C-v>"] = actions.select_vertical,
    ["<C-t>"] = actions.select_tab,
    ["<c-d>"] = require("telescope.actions").delete_buffer,
    -- ["<C-u>"] = actions.preview_scrolling_up,
    -- ["<C-d>"] = actions.preview_scrolling_down,

    -- ["<Tab>"] = actions.close,
    -- ["<S-Tab>"] = actions.close,
    -- ["<Tab>"] = actions.toggle_selection + actions.move_selection_worse,
    -- ["<S-Tab>"] = actions.toggle_selection + actions.move_selection_better,
    ["<C-q>"] = actions.send_to_qflist + actions.open_qflist,
    ["<M-q>"] = actions.send_selected_to_qflist + actions.open_qflist,
    ["<C-l>"] = actions.complete_tag,
    ["<C-h>"] = actions.which_key, -- keys from pressing <C-h>
    ["<esc>"] = actions.close,
  },
  -- for normal mode
  n = {
    ["<esc>"] = actions.close,
    ["<CR>"] = actions.select_default,
    ["<C-x>"] = actions.select_horizontal,
    ["<C-v>"] = actions.select_vertical,
    ["<C-t>"] = actions.select_tab,
    ["<C-b>"] = actions.results_scrolling_up,
    ["<C-f>"] = actions.results_scrolling_down,
    -- ["<Tab>"] = actions.close,
    -- ["<S-Tab>"] = actions.close,
    -- ["<Tab>"] = actions.toggle_selection + actions.move_selection_worse,
    -- ["<S-Tab>"] = actions.toggle_selection + actions.move_selection_better,
    ["<C-q>"] = actions.send_to_qflist + actions.open_qflist,
    ["<M-q>"] = actions.send_selected_to_qflist + actions.open_qflist,
    ["j"] = actions.move_selection_next,
    ["k"] = actions.move_selection_previous,
    ["H"] = actions.move_to_top,
    ["M"] = actions.move_to_middle,
    ["L"] = actions.move_to_bottom,
    ["q"] = actions.close,
    ["dd"] = require("telescope.actions").delete_buffer,
    ["s"] = actions.select_horizontal,
    ["v"] = actions.select_vertical,
    ["t"] = actions.select_tab,
    ["<Down>"] = actions.move_selection_next,
    ["<Up>"] = actions.move_selection_previous,
    ["gg"] = actions.move_to_top,
    ["G"] = actions.move_to_bottom,
    ["<C-u>"] = actions.preview_scrolling_up,
    ["<C-d>"] = actions.preview_scrolling_down,
    ["<PageUp>"] = actions.results_scrolling_up,
    ["<PageDown>"] = actions.results_scrolling_down,
    ["?"] = actions.which_key,
  },
}

local lga_actions = require("telescope-live-grep-args.actions")
lvim.builtin.telescope.extensions = {
  fzf = {
    fuzzy = true,                   -- false will only do exact matching
    override_generic_sorter = true, -- override the generic sorter
    override_file_sorter = true,    -- override the file sorter
    case_mode = "smart_case",       -- or "ignore_case" or "respect_case"
  },
  live_grep_args = {
    auto_quoting = true, -- enable/disable auto-quoting
    -- define mappings, e.g.
    mappings = {
      -- extend mappings
      i = {
        ["<C-o>"] = lga_actions.quote_prompt(),
        ["<C-i>"] = lga_actions.quote_prompt({ postfix = " --iglob " }),
        ["<C-y>"] = lga_actions.quote_prompt({ postfix = " -t " }),
        ["<C-f>"] = lga_actions.quote_prompt({ postfix = " -g " }),
      },
    },
    -- ... also accepts theme settings, for example:
    -- theme = "dropdown", -- use dropdown theme
    -- theme = { }, -- use own theme spec
    -- layout_config = { mirror=true }, -- mirror preview pane
  }
}

lvim.builtin.telescope.theme = "ivy"

lvim.builtin.telescope.pickers.live_grep = {
  theme = "ivy",
}

lvim.builtin.telescope.pickers.grep_string = {
  theme = "ivy",
}

lvim.builtin.telescope.pickers.current_buffer_fuzzy_find = {
  theme = "ivy",
}

lvim.builtin.telescope.pickers.find_files = {
  theme = "ivy",
  previewer = true,
}

lvim.builtin.telescope.pickers.buffers = {
  theme = "ivy",
  previewer = true,
  initial_mode = "normal",
}

lvim.builtin.telescope.pickers.planets = {
  show_pluto = true,
  show_moon = true,
}

lvim.builtin.telescope.pickers.colorscheme = {
  enable_preview = true,
}

lvim.builtin.telescope.pickers.lsp_references = {
  theme = "ivy",
  initial_mode = "normal",
}

lvim.builtin.telescope.pickers.lsp_definitions = {
  theme = "ivy",
  initial_mode = "normal",
}

lvim.builtin.telescope.pickers.lsp_declarations = {
  theme = "ivy",
  initial_mode = "normal",
}

lvim.builtin.telescope.pickers.lsp_implementations = {
  theme = "ivy",
  initial_mode = "normal",
}

require("telescope-tabs").setup {
  show_preview = false,
  close_tab_shortcut = "C-d",
  initial_mode = "normal",
  theme = "ivy",
  -- Your custom config :^)
}

lvim.builtin.telescope.on_config_done = function(telescope)
  pcall(telescope.load_extension, "agrolens")
  pcall(telescope.load_extension, "fzf")
  pcall(telescope.load_extension, "live_grep_args")
  pcall(telescope.load_extension, "neoclip")
end
