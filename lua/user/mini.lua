require('mini.splitjoin').setup(
  {
    mappings = {
      toggle = 'gS',
      split = '',
      join = '',
    },
    detect = {
      brackets = nil,
      separator = ',',
      exclude_regions = nil,
    },
    split = {
      hooks_pre = {},
      hooks_post = {},
    },
    join = {
      hooks_pre = {},
      hooks_post = {},
    },
  }
)
