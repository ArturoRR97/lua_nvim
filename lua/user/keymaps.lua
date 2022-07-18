local opts = { noremap = true, silent = true }

local term_opts = { silent = true }

-- Shorten function name
local keymap = vim.api.nvim_set_keymap

--Remap space as leader key
keymap("", "<Space>", "<Nop>", opts)
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Modes
--   normal_mode = "n",
--   insert_mode = "i",
--   visual_mode = "v",
--   visual_block_mode = "x",
--   term_mode = "t",
--   command_mode = "c",

-- Normal --
keymap("n", "<leader>e", ":Lex 30<cr>", opts)
keymap("n", "<leader>s", ":w<CR>", opts)
keymap("n", "<leader>w", ":q<CR>", opts)
keymap("n", "<leader>q", "@:", opts)
keymap("n", "<leader>h", ":noh", opts)
keymap("n", "<leader>c", '"*y<CR>', opts)
keymap("n", "<leader>v", '"*p<CR>', opts)
keymap("n", "<leader>t", ":set rnu", opts)
keymap("n", "<leader>j", "ciw", opts)
keymap("n", "<leader>o", "o<ESC>", opts)
keymap("n", "<leader>O", "O<ESC>", opts)
keymap("n", "<leader>i", "a<CR><ESC>", opts)

-- Navigate buffers
keymap("n", "L", ":bnext<CR>", opts)
keymap("n", "H", ":bprevious<CR>", opts)


-- Insert --
-- Press jk fast to enter
keymap("i", "jk", "<ESC>", opts)


-- Visual --
keymap("v", "<", "<gv", opts)
keymap("v", ">", ">gv", opts)
keymap("v", "p", '"_dP', opts)

keymap("n", "<A-j>", ":m .+1<CR>", opts)
keymap("n", "<A-k>", ":m .-2<CR>", opts)
keymap("i", "<A-j>", "<ESC>:m .+1<CR>==gi", opts)
keymap("i", "<A-k>", "<ESC>:m .-2<CR>==gi", opts)
keymap("v", "<A-j>", ":m '>+1<CR>gv=gv", opts)
keymap("v", "<A-k>", ":m '<-2<CR>gv=gv", opts)
