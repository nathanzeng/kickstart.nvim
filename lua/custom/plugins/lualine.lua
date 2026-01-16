-- stylua: ignore
local colors = {
  black        = '#282828',
  white        = '#ebdbb2',
  red          = '#fb4934',
  green        = '#b8bb26',
  blue         = '#83a598',
  yellow       = '#fe8019',
  gray         = '#a89984',
  darkgray     = '#3c3836',
  lightgray    = '#504945',
  inactivegray = '#7c6f64',
  bForeground = '#c9ba9b',
}

local normalTheme = {
  a = { bg = colors.gray, fg = colors.black, gui = 'bold' },
  b = { bg = colors.lightgray, fg = colors.bForeground },
  c = { bg = colors.darkgray, fg = colors.gray },
}

local custom_gruvbox = {
  normal = normalTheme,
  insert = normalTheme,
  visual = normalTheme,
  replace = normalTheme,
  command = {
    a = { bg = colors.green, fg = colors.black, gui = 'bold' },
    b = { bg = colors.lightgray, fg = colors.white },
    c = { bg = colors.inactivegray, fg = colors.black },
  },
  inactive = {
    a = { bg = colors.darkgray, fg = colors.gray, gui = 'bold' },
    b = { bg = colors.darkgray, fg = colors.gray },
    c = { bg = colors.darkgray, fg = colors.gray },
  },
}

local function custom_filename()
  return '%F%m%r'
end

-- TODO: i like the idea of showing the full path to the file but highlighting the name of the file
return {
  'nvim-lualine/lualine.nvim',
  config = function()
    require('lualine').setup {
      options = { theme = custom_gruvbox },
      sections = {
        lualine_c = { custom_filename },
        lualine_x = { 'filetype' },
      },
    }
  end,
}
