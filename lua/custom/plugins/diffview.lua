return {
  'sindrets/diffview.nvim',
  config = function()
    require('diffview').setup {}
    local diffViewIsOpen = false

    local function toggle_diffview()
      if diffViewIsOpen then
        vim.cmd 'DiffviewClose'
        diffViewIsOpen = false
      else
        vim.cmd 'DiffviewOpen'
        diffViewIsOpen = true
      end
    end
    vim.keymap.set('n', '<leader>gd', toggle_diffview, { desc = '[d]iff' })
  end,
}
