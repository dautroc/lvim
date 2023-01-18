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
