vim.g.mapleader = " " -- uses space as the leader for custom keymaps

local keymap = vim.keymap -- for conciseness

-- use jk to exit insert mode
keymap.set("i", "jk", "<ESC>")

--general keymaps
keymap.set("n", "<leader>nh", ":nohl<CR>") -- space + n + h clears search
keymap.set("n", "x", '"_x') -- x doesn't copy when clearing
keymap.set("n", "<leader>+", "<C-a>") -- space + "+" increments a number
keymap.set("n", "<leader>-", "<C-x>") -- space + "-" decrements a number

keymap.set("n", "<leader>sv", "<C-w>v") -- split window vertically
keymap.set("n", "<leader>sh", "<C-w>s") -- split window horizontally
keymap.set("n", "<leader>se", "<C-w>=") -- make split windows equal width
keymap.set("n", "<leader>sx", ":close<CR>") -- close current split window

keymap.set("n", "<leader>to", ":tabnew<CR>") -- open new tab
keymap.set("n", "<leader>tx", ":tabclose<CR>") -- close current tab
keymap.set("n", "<leader>tn", ":tabn<CR>") -- go to next tab
keymap.set("n", "<leader>tp", ":tabp<CR>") -- go to previous tab

keymap.set("n", "<leader>hh", "<C-w>h") -- navigate to left window
keymap.set("n", "<leader>ll", "<C-w>l") -- navigate to right window
keymap.set("n", "<leader>kk", "<C-w>k") -- navigate to upper window
keymap.set("n", "<leader>jj", "<C-w>j") -- navigate to lower window

-- vim-maximizer
keymap.set("n", "<leader>sm", ":MaximizerToggle<CR>")

-- nvim-tree
keymap.set("n", "<leader>e", ":NvimTreeToggle<CR>") -- toggle file tree

-- telescope
keymap.set("n", "<leader>ff", "<cmd>Telescope find_files<cr>") -- find files in current project
keymap.set("n", "<leader>fs", "<cmd>Telescope live_grep<cr>") -- find text in current project
keymap.set("n", "<leader>fc", "<cmd>Telescope grep_string<cr>") -- find current string the cursor is on throughout the project
keymap.set("n", "<leader>fb", "<cmd>Telescope buffers<cr>") -- show current buffers
keymap.set("n", "<leader>fh", "<cmd>Telescope help_tags<cr>") -- show help tags

-- diagnostics
keymap.set("n", "<leader>dd", "<cmd> lua vim.diagnostic.open_float() <CR>") -- show diagnostic data
keymap.set("n", "<leader>dn", "<cmd> lua vim.diagnostic.goto_next() <CR>") -- show next diagnostic
keymap.set("n", "<leader>dp", "<cmd> lua vim.diagnostic.goto_prev() <CR>") -- show previous diagnostic
