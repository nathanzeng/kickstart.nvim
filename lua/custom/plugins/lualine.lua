-- TODO: i like the idea of showing the full path to the file but highlighting the name of the file
return {
  'nvim-lualine/lualine.nvim',
  config = function()
    require('lualine').setup {
      options = { theme = 'gruvbox' },
      sections = {
        lualine_x = { 'filetype' },
      },
    }
  end,
}
