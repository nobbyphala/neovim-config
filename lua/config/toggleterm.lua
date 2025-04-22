require("toggleterm").setup({
      size = 15,
      open_mapping = [[<c-\>]], -- toggle with <Space + `>
      shade_filetypes = {},
      shade_terminals = true,
      shading_factor = 2,
      direction = "float", -- default terminal mode: float
      float_opts = {
        border = "curved",
        winblend = 3,
      },
    })
