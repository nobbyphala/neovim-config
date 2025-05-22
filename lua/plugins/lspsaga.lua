return {
    'nvimdev/lspsaga.nvim',
    config = function()
        require('lspsaga').setup({
      finder = {
    keys = {
      jump_to = 'o',
      quit = {'q', '<Esc>'},
    }
  }
    })
    end,
    dependencies = {
        'nvim-treesitter/nvim-treesitter', -- optional
        'nvim-tree/nvim-web-devicons',     -- optional
    }
}
