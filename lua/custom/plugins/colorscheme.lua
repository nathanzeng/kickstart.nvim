return {
  'EdenEast/nightfox.nvim',
  priority = 1000, -- Make sure to load this before all the other start plugins.
  config = function()
    require 'nightfox'
    vim.cmd.colorscheme 'nightfox'
  end,
}

-- I don't actually like the colorblind settings for nightfox, but this is what I tested
-- return {
--   'EdenEast/nightfox.nvim',
--   priority = 1000, -- Make sure to load this before all the other start plugins.
--   config = function()
--     require('nightfox').setup {
--       options = {
--         colorblind = {
--           enable = true,
--           severity = {
--             protan = 0.3,
--             deutan = 1,
--             tritan = 0,
--           },
--         },
--       },
--     }
--
--     vim.cmd.colorscheme 'nightfox'
--   end,
-- }
