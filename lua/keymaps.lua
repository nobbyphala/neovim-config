
-- File Tree: <leader>e to toggle
vim.keymap.set("n", "<leader>e", "<cmd>NvimTreeToggle<CR>", { desc = "Toggle File Tree" })

vim.keymap.set("n", "<C-h>", "<C-w>h", { desc = "Move to left window" })
vim.keymap.set("n", "<C-j>", "<C-w>j", { desc = "Move to below window" })
vim.keymap.set("n", "<C-k>", "<C-w>k", { desc = "Move to above window" })
vim.keymap.set("n", "<C-l>", "<C-w>l", { desc = "Move to right window" })

local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.find_files, { desc = 'Telescope find files' })
vim.keymap.set('n', '<leader>fg', builtin.live_grep, { desc = 'Telescope live grep' })
vim.keymap.set('n', '<leader>fb', builtin.buffers, { desc = 'Telescope buffers' })
vim.keymap.set('n', '<leader>fh', builtin.help_tags, { desc = 'Telescope help tags' })
vim.api.nvim_set_keymap('n', 'Q', ':Telescope cmdline<CR>', { noremap = true, desc = "Cmdline" })
vim.api.nvim_set_keymap('n', '<leader><leader>', ':Telescope cmdline<CR>', { noremap = true, desc = "Cmdline" })
vim.keymap.set('n', '<leader>tc', '<cmd>Telescope colorscheme<CR>', { desc = "Pick colorscheme" })

vim.keymap.set("n", "<leader>gg", "<cmd>LazyGit<CR>", { desc = "Open Lazygit" })

vim.keymap.set("n", "<C-s>", "<cmd>w<CR>", { desc = "Save File" })        -- normal mode
vim.keymap.set("i", "<C-s>", "<Esc><cmd>w<CR>a", { desc = "Save File" }) -- insert mode

local opts = { noremap=true, silent=true }

-- Go to Definition
vim.keymap.set("n", "gd", vim.lsp.buf.definition, { desc = "Go to Definition" })

-- Go to Declaration
vim.keymap.set("n", "gD", vim.lsp.buf.declaration, { desc = "Go to Declaration" })

-- Go to Implementation
vim.keymap.set("n", "gi", vim.lsp.buf.implementation, { desc = "Go to Implementation" })

-- Find References
-- vim.keymap.set("n", "gr", vim.lsp.buf.references, { desc = "Find References" })
vim.keymap.set('n', 'gr', '<cmd>Lspsaga finder<CR>', { noremap = true, silent = true })

-- Hover Docs
vim.keymap.set("n", "K", vim.lsp.buf.hover, { desc = "Show Hover Documentation" })

-- Signature Help (when inside function call)
vim.keymap.set("n", "<C-k>", vim.lsp.buf.signature_help, { desc = "Signature Help" })

-- Rename Symbol
vim.keymap.set("n", "<leader>rn", vim.lsp.buf.rename, { desc = "Rename Symbol" })

-- Code Actions
vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, { desc = "Code Action" })

-- Show Line Diagnostics
vim.keymap.set("n", "<leader>cd", vim.diagnostic.open_float, { desc = "Line Diagnostics" })

-- Go to Next/Prev Diagnostic
vim.keymap.set("n", "[d", vim.diagnostic.goto_prev, { desc = "Prev Diagnostic" })
vim.keymap.set("n", "]d", vim.diagnostic.goto_next, { desc = "Next Diagnostic" })


vim.keymap.set("n", "<Tab>", ":BufferLineCycleNext<CR>", { desc = "Next Buffer" })
vim.keymap.set("n", "<S-Tab>", ":BufferLineCyclePrev<CR>", { desc = "Previous Buffer" })

-- Resize splits using Ctrl + Arrow Keys
vim.keymap.set("n", "<M-Up>", "<cmd>resize -2<CR>", { desc = "Resize Split Up" })
vim.keymap.set("n", "<M-Down>", "<cmd>resize +2<CR>", { desc = "Resize Split Down" })
vim.keymap.set("n", "<M-Left>", "<cmd>vertical resize -2<CR>", { desc = "Resize Split Left" })
vim.keymap.set("n", "<M-Right>", "<cmd>vertical resize +2<CR>", { desc = "Resize Split Right" })

vim.keymap.set("n", "<leader>x", "<cmd>Bdelete<CR>", { desc = "Close Buffer" })

-- Horizontal split
vim.keymap.set("n", "<leader>sh", "<cmd>split<CR>", { desc = "Horizontal Split" })

-- Vertical split
vim.keymap.set("n", "<leader>sv", "<cmd>vsplit<CR>", { desc = "Vertical Split" })

-- Do not use leader key in terminal mode (prevents space lag)
vim.keymap.set("t", "<Space>", "<Space>", { noremap = true, silent = true })
