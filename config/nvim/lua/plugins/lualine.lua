return {
    'nvim-lualine/lualine.nvim',
    config = function()
      require('lualine').setup({
        options = {
	  theme = 'kanagawa-paper'
        }
      })
    end,
    dependencies = { 'nvim-tree/nvim-web-devicons' }
}
