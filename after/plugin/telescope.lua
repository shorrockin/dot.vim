local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.find_files, {desc = '[F]ind [f]iles in the project'})
vim.keymap.set('n', '<leader>fo', builtin.oldfiles, {desc = '[F]ind recently [o]pened files'})
vim.keymap.set('n', '<leader>fg', builtin.live_grep, {desc = '[F]ind by [g]rep'})
vim.keymap.set('n', '<leader>fw', builtin.grep_string, {desc = '[F]ind current [w]ord'})
vim.keymap.set('n', '<leader>fb', builtin.buffers, {desc = '[F]ind by [b]uffers'})
vim.keymap.set('n', '<leader>fh', builtin.help_tags, {desc = '[F]ind by [h]elp'})

-- allows for greping for a specific string, project-search
vim.keymap.set('n', '<leader>ps', function()
	builtin.grep_string({ search = vim.fn.input("grep > ") });
end)
