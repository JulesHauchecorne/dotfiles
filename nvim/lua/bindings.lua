--require('telescope-config')
vim.g.mapleader = " "
local keymap = vim.api.nvim_set_keymap
local opt = { noremap = true }
local opts = { noremap = true, silent = true }
-- Who would ever reach so far as Esc...
keymap('i', 'jj' , '<Esc>', {} )
keymap('i', 'kk' , '<Esc>', {} )
-- sane window bindings
keymap('n', '<leader>h', ':wincmd h<CR>', opts )
keymap('n', '<leader>l', ':wincmd l<CR>', opts )
keymap('n', '<leader>k', ':wincmd k<CR>', opts )
keymap('n', '<leader>j', ':wincmd j<CR>', opts )
-- Nvim
keymap('n', '<leader>pv', ':NvimTreeFindFile<Enter><CR>', opts)
keymap('n', '<leader>po', ':NvimTreeOpen<Enter><CR>', opts)
-- Telescope stuff <3
keymap('n', 'tt', ':Telescope<CR>', opts)
vim.cmd("nnoremap <leader><leader> <cmd>lua require('telescope.builtin').find_files()<cr>")
vim.cmd("nnoremap <leader>tg <cmd>lua require('telescope.builtin').live_grep()<cr>")
vim.cmd("nnoremap <leader>fw :Telescope grep_string<CR>")
keymap('n', 'gr', "<cmd>lua require('telescope.builtin').lsp_references()<cr>", opts)
keymap('n', 'gi', "<cmd>lua require('telescope.builtin').lsp_implementations()<cr>", opts)
keymap('n', '<leader>fv' ,"<cmd>lua require('telescope.builtin').oldfiles()<cr>", opts )
keymap('n', '<leader>/' , "<cmd>lua require('telescope.builtin').current_buffer_fuzzy_find()<cr>", opts)
vim.cmd("nnoremap <leader>d <cmd> lua require('telescope-config.init').search_dotfiles()<CR>")
keymap('n', '<leader>;', "<cmd>lua require('telescope.builtin').command_history()<cr>", opts)
-- Cant drop fzf or Rg yet <_<
keymap('n', '<leader>fzf', ":FZF --reverse<CR>", opts)
keymap('n', '<leader>rg', ':Rg <space><CR>', opt)
-- laziness++
keymap('n', '<leader>x', ':wqa<CR>', opts)
keymap('n', '<leader>q', ':q<CR>', opts)
-- Cheat.sh
keymap('n', '<leader>c', ':Cheat<CR>', opt)
-- eazy get rid of highlight
keymap('n', '//', ':noh<CR>', opt)
-- Lsp builtin stuff
keymap('n', 'gd', '<cmd>lua vim.lsp.buf.definition()<CR>', opts)
--keymap('n', 'gD', '<cmd>lua vim.lsp.buf.declaration()<CR>', opts)
keymap('n', 'K', '<cmd>lua vim.lsp.buf.hover()<CR>', opts)
keymap('n', 'gi', '<cmd>lua vim.lsp.buf.implementation()<CR>', opts)
keymap('n', '<C-k>', '<cmd>lua vim.lsp.buf.signature_help()<CR>', opts)
--keymap('n', '<leader>nn', '<cmd>lua vim.lsp.buf.rename()<CR>', opts)
--keymap('n', 'gf', '<cmd>lua vim.lsp.buf.code_action()<CR>', opts)

--keymap('n', '<leader>e', '<cmd>lua vim.lsp.diagnostic.show_line_diagnostics()<CR>', opts)
-- lsp saga
keymap('n', '<leader>nn', "<cmd>lua require('lspsaga.rename').rename()<CR>", opts)
keymap( "n", "gf", "<cmd>Lspsaga code_action<cr>", opts)
keymap( "n", "<leader>e", "<cmd>Lspsaga show_line_diagnostics<cr>", opts)
keymap( "n", "gj", "<cmd>Lspsaga diagnostic_jump_next<cr>", opts)
keymap( "n", "gk", "<cmd>Lspsaga diagnostic_jump_prev<cr>", opts)

-- ez indent
vim.cmd("nnoremap <leader>ff gg=G''")
--java go fix
keymap('n', '<leader>gf', "<cmd>lua require('jdtls').code_action()<cr>", opts)
-- Floating terminal
keymap('n', 'T', "<cmd> lua require('FTerm').open()<CR>", opts)
-- Markdown preview
keymap('n' , '<leader>md' , ':MarkdownPreview<CR>' , opts)

-- emmet leader key pour le html completion
vim.cmd("let g:user_emmet_leader_key=',' ")

-- Debugging with vimspector
--vim.cmd("nmap <Leader>Dw <Plug>VimspectorBalloonEval")
--vim.cmd("nmap <Leader>Dl :call vimspector#Launch()")
--keymap('n', '<space>q', '<cmd>lua vim.lsp.diagnostic.set_loclist()<cr>', opts)

