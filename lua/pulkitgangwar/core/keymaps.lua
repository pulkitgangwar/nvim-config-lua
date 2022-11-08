vim.g.mapleader = " "

local keymap = vim.keymap


keymap.set("i","kj","<Esc>")

keymap.set("n","<leader>nh",":nohl<CR>")

-- keymap.set("n","x","_x")

keymap.set("n","<leader>+","<C-a>")
keymap.set("n","<leader>-","<C-x>")

keymap.set("n","<leader>sv","<C-w>v")
keymap.set("n","<leader>sh","<C-w>s")
keymap.set("n","<leader>se","<C-w>=")
keymap.set("n","<leader>sx",":close<CR>")

keymap.set("n","<leader>to",":tabnew<CR>")
keymap.set("n","<leader>tx",":tabclose<CR>")
keymap.set("n","<leader>tn",":tabn<CR>")
keymap.set("n","<leader>tp",":tabp<CR>")

keymap.set("n","<C-Up",":resize +2<CR>")


-- move between buffers or tabs
keymap.set("n","<S-l>",":bnext<CR>")
keymap.set("n","<S-h>",":bprev<CR>")



-- move lines inside visual mode 
keymap.set("v","<A-j>",":m +1<CR>==")
keymap.set("v","<A-k>",":m -2<CR>==")
keymap.set("v","p","_dP")

-- plugin keymaps
 
-- vim maximizer

keymap.set("n","<leader>sm",":MaximizerToggle<CR>")


-- nvim tree
keymap.set("n","<leader>e",":NvimTreeToggle<CR>")


-- telescope 
keymap.set("n", "<leader>ff", "<cmd>Telescope find_files<cr>") -- find files within current working directory, respects .gitignore
keymap.set("n", "<leader>fs", "<cmd>Telescope live_grep<cr>") -- find string in current working directory as you type
keymap.set("n", "<leader>fc", "<cmd>Telescope grep_string<cr>") -- find string under cursor in current working directory
keymap.set("n", "<leader>fb", "<cmd>Telescope buffers<cr>") -- list open buffers in current neovim instance
keymap.set("n", "<leader>fh", "<cmd>Telescope help_tags<cr>") -- list available help tags


-- buffer (bbye)
keymap.set("n","<leader>bx",":Bdelete<CR>")

-- neoclip
keymap.set("n","<leader>cm",":Telescope neoclip<CR>")



keymap.set("n","<C-w>",":ToggleTerm<CR>")



