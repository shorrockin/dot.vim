local nmap = function(keys, func, desc)
    vim.keymap.set('n', keys, func, { desc = 'Remap: ' .. desc })
end


-- leader key to space
vim.g.mapleader = " "

-- simple write file, slightly faster
nmap("<leader>w", vim.cmd.write, "[W]rite")

-- project view, opens upfile selection
nmap("<leader>pv", vim.cmd.NvimTreeToggle, "[P]roject [V]iew")

-- half page jumping keeps cursor in the middle, less dissorienting
nmap("<C-d>", "<C-d>zz", "Page [D]own")
nmap("<C-u>", "<C-u>zz", "Page [U]p")

-- similar to above, searching keeps terms in the middle of the screen
nmap("n", "nzzzv", "[N]ext")
nmap("N", "Nzzzv", "Previous")

-- yank into the system clipboard
vim.keymap.set({ "n", "v" }, "<leader>y", [["+y]], { desc = 'Remap: [Y]ank To System Clipboard' })
nmap("<leader>Y", [["+Y]], "[Y]ank To System Clipboard")

-- don't use it, normally enters command mode
vim.keymap.set("n", "Q", "<nop>")

-- allows you to switch projects
-- not currently in used, needs to dig in more if we think it'll be using
-- vim.keymap.set("n", "<C-f>", "<cmd>silent !tmux neww tmux-sessionizer<CR>")

-- easy navigation of quick suggestions
vim.keymap.set("n", "<C-k>", "<cmd>cnext<CR>zz")
vim.keymap.set("n", "<C-j>", "<cmd>cprev<CR>zz")
vim.keymap.set("n", "<leader>k", "<cmd>lnext<CR>zz")
vim.keymap.set("n", "<leader>j", "<cmd>lprev<CR>zz")

-- effectively a rename, changes the word you were on with
vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])

-- makes the current file executable
vim.keymap.set("n", "<leader>x", "<cmd>!chmod +x %<CR>", { silent = true, desc = 'Remap: Make File E[x]ecutable' })

-- toggles trouble buffer at the bottom of the screen
nmap("<leader>tt", vim.cmd.TroubleToggle, "[T]rouble [T]oggle")

-- toggles spell check on/off
vim.keymap.set("n", "<leader>ts", function() vim.opt.spell = not (vim.opt.spell:get()) end,
    { desc = 'Remap: Toggle [T]oggle [S]pell' })

-- allows you to select a bunch of text and move it around uing J and K
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- allows for pasting overtop off things from whatever is in your register,
-- while maintaining the contents on that register
vim.keymap.set("x", "<leader>p", [["_dP]])
