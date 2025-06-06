require('telescope').setup {
  defaults = {
    file_ignore_patterns = {}, -- ensure nothing is filtered here
  },
  pickers = {
    find_files = {
      hidden = true,
      no_ignore = true,
    }
  },
  extensions = {
    fzf = {
      fuzzy = true,
      override_generic_sorter = true,
      override_file_sorter = true,
      case_mode = "smart_case",
    }
  }
}
require('telescope').load_extension('fzf')
require('telescope').load_extension('cmdline')
