require('plugins')

--nvim settings
vim.opt.cmdheight = 2
vim.opt.wrap = false
vim.opt.colorcolumn = "95"
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.softtabstop = 4
vim.opt.expandtab = true
vim.opt.scrolloff = 8
vim.opt.nu = true
vim.opt.relativenumber = true
vim.opt.hlsearch = true
vim.opt.hlsearch = false
vim.opt.incsearch = true
vim.opt.termguicolors = true
vim.opt.signcolumn = "yes"
vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.cursorline = true
vim.opt.completeopt = "menu,menuone,noselect"

--nvim mappings
vim.g.mapleader = " "
vim.keymap.set("i", "<C-c>", "<Esc>")
vim.keymap.set("i", "{", "{}<left>")
vim.keymap.set("i", "[", "[]<left>")
vim.keymap.set("i", "(", "()<left>")
vim.keymap.set("i", "<C-t>", "<C-x><C-o>")
vim.keymap.set("i", "<C-e>", "<C-y>", { remap = true })
vim.keymap.set("n", "<leader>c", "gcc")
vim.keymap.set("n", "<leader>p", "\"+p")
vim.keymap.set("n", "<leader>n", ":NERDTreeToggle<CR>")
vim.keymap.set("n", "<leader>md", ":MarkdownPreview<CR>")
vim.keymap.set("n", "<leader>t", ":term<CR>")
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("v", "<leader>y", "\"+y")

-- Lua
vim.cmd[[colorscheme tokyonight-storm]]

-- Additional Variables
vim.g.airline_section_z ='%p%% ln: %l/%L cn=%c'

local lsp = require('lsp-zero')
lsp.preset('recommended')

local cmp = require('cmp')

lsp.setup_nvim_cmp({
  mapping = cmp.mapping.preset.insert({
    ['<C-Space>'] = cmp.mapping.complete(),
    ['<C-b>'] = cmp.mapping.scroll_docs(-4),
    ['<C-f>'] = cmp.mapping.scroll_docs(4),
  })
})

lsp.setup()
