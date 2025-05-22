return {
   -- Fuzzy Finder
  { "nvim-telescope/telescope.nvim", tag = "0.1.8", dependencies = { "nvim-lua/plenary.nvim", "jonarrien/telescope-cmdline.nvim", } },
  { "nvim-telescope/telescope-fzf-native.nvim", build = 'make' }
}
