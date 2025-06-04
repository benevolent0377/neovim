local mark = require('harpoon.mark')
local ui = require('harpoon.ui')

vim.keymap.set('n', '<leader>h', function() return 0 end, { desc = "harpoon keybinds" })
vim.keymap.set('n', '<leader>ha', mark.add_file, { desc = "mark a file to harpoon" })
vim.keymap.set('n', '<leader>hd', ui.toggle_quick_menu, { desc = "open the harpoon menu" })

vim.keymap.set('n', '<leader>1', function() ui.nav_file(1) end, { desc = "harpoon the first file" })
vim.keymap.set('n', '<leader>2', function() ui.nav_file(2) end, { desc = "harpoon the second file" })
vim.keymap.set('n', '<leader>3', function() ui.nav_file(3) end, { desc = "harpoon the third file" })
vim.keymap.set('n', '<leader>4', function() ui.nav_file(4) end, { desc = "harpoon the fourth file"})
vim.keymap.set('n', '<leader>5', function() ui.nav_file(5) end, { desc = "harpoon the fifth file"})
