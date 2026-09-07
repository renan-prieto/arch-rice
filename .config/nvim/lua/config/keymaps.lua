vim.g.mapleader = " "
vim.g.maplocalleader = " "

local map = vim.keymap.set

map("n", "<leader>w", "<cmd>w<CR>", { desc = "Salvar" })
map("n", "<leader>q", "<cmd>q<CR>", { desc = "Sair" })

map("n", "<leader>e", "<cmd>Neotree toggle<CR>", { desc = "Explorer" })

map("n", "<leader>ff", "<cmd>Telescope find_files<CR>", { desc = "Arquivos" })
map("n", "<leader>fg", "<cmd>Telescope live_grep<CR>", { desc = "Buscar texto" })
map("n", "<leader>fb", "<cmd>Telescope buffers<CR>", { desc = "Buffers" })
map("n", "<leader>fh", "<cmd>Telescope help_tags<CR>", { desc = "Help" })

map("n", "<leader>tt", "<cmd>ToggleTerm<CR>", { desc = "Terminal" })

map("n", "<C-h>", "<C-w>h")
map("n", "<C-j>", "<C-w>j")
map("n", "<C-k>", "<C-w>k")
map("n", "<C-l>", "<C-w>l")

map("v", "J", ":m '>+1<CR>gv=gv")
map("v", "K", ":m '<-2<CR>gv=gv")

map("n", "<leader>ca", vim.lsp.buf.code_action, { desc = "Code Action" })
map("n", "<leader>rn", vim.lsp.buf.rename, { desc = "Renomear" })
map("n", "gd", vim.lsp.buf.definition, { desc = "Definição" })
map("n", "gr", vim.lsp.buf.references, { desc = "Referências" })
map("n", "K", vim.lsp.buf.hover, { desc = "Documentação" })
