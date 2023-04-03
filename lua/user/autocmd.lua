lvim.autocommands = {
  {
    "BufEnter",
    {
      pattern = { "*.rb" },
      command = "lua vim.diagnostic.hide()",
    }
  },
}
