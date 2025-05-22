require("nvim-tree").setup({
  view = {
    preserve_window_proportions = true,
  },
  actions = {
    open_file = {
      quit_on_open = false,
      resize_window = true,
      window_picker = {
        enable = false, -- disable window picker to open in current buffer
      },
    },
  },
  sort = {
    sorter = "case_sensitive",
  },
  view = {
    width = 30,
  },
  renderer = {
    group_empty = true,
  },
  filters = {
    dotfiles = false,
  },
})
