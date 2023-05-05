local telescope = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', telescope.find_files, { desc = '[F]ind [f]iles in the project' })
vim.keymap.set('n', '<leader>fo', telescope.oldfiles, { desc = '[F]ind in [o]ld files' })
vim.keymap.set('n', '<leader>fg', telescope.live_grep, { desc = '[F]ind by [g]rep' })
vim.keymap.set('n', '<leader>fp', telescope.grep_string, { desc = '[F]ind in [p]roject' })
vim.keymap.set('n', '<leader>fb', telescope.buffers, { desc = '[F]ind by [b]uffers' })
vim.keymap.set('n', '<leader>fh', telescope.help_tags, { desc = '[F]ind by [h]elp' })
vim.keymap.set('n', '<leader>fs', telescope.lsp_document_symbols, { desc = '[F]ind by [s]ymbol' })
vim.keymap.set('n', '<leader>fk', telescope.keymaps, { desc = '[F]ind in [k]eymaps' })
vim.keymap.set('n', '<leader>fa', telescope.commands, { desc = '[F]ind command [a]action' })
vim.keymap.set('n', '<leader>sp', telescope.spell_suggest, { desc = '[S]pell [c]heck' })

-- allows for greping for a specific string, project-search specific
vim.keymap.set('n', '<leader>ps', function()
    telescope.grep_string({ search = vim.fn.input("grep > ") });
end)
