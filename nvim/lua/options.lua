vim.cmd('let $nvim = "/home/jules/.config/nvim/"')
vim.cmd('filetype plugin indent on')
vim.env.config = "/home/jules/.config/"
vim.o.tabstop = 4
vim.o.softtabstop = 4
vim.o.relativenumber = true
--vim.o.number = true
vim.o.expandtab = true
vim.o.shiftwidth = 4
vim.o.autoindent = true
vim.o.smartindent = true
vim.o.wrap = false
vim.o.smartcase = true
vim.o.swapfile = false
vim.nobackup = true
vim.o.undofile = true
vim.o.errorbells = false
vim.cmd('set statusline=%f')
vim.o.termguicolors = true
vim.o.incsearch = true
vim.o.scrolloff = 8
vim.o.updatetime = 50
vim.o.signcolumn = "yes"
vim.cmd( 'syntax on')
vim.cmd('colorscheme  monokai')
vim.cmd('hi normal guibg=NONE ctermbg=NONE')
vim.cmd('highlight clear LineNr')
vim.cmd('highlight clear SignColumn')
