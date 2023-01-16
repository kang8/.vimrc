local status, saga = pcall(require, 'lspsaga')
if not status then
  vim.notify('Not found glepnir/lspsaga.nvim')
  return
end

saga.setup({
  server_filetype_map = {
    typescript = 'typescript',
  },
})

local opts = { noremap = true, silent = true }

vim.keymap.set('n', '<C-j>', '<Cmd>Lspsaga diagnostic_jump_next<CR>', opts)
vim.keymap.set('i', '<C-k>', '<Cmd>lua vim.lsp.buf.signature_help()<CR>', opts)
vim.keymap.set('n', 'K', '<Cmd>Lspsaga hover_doc<CR>', opts)
-- vim.keymap.set('n', 'gk', '<Cmd>Lspsaga lsp_finder<CR>', opts)
vim.keymap.set('n', 'gd', '<cmd>lua vim.lsp.buf.definition()<CR>', opts)
-- vim.keymap.set("n", "<C-]>", "<cmd>lua vim.lsp.buf.definition()<CR>", opts) -- Maybe specify language
vim.keymap.set('n', 'gr', '<cmd>lua vim.lsp.buf.references()<CR>', opts)
vim.keymap.set('n', 'gp', '<Cmd>Lspsaga preview_definition<CR>', opts)
vim.keymap.set('n', '<leader>rn', '<Cmd>Lspsaga rename<CR>', opts)

vim.keymap.set('n', '<F14>', '<Cmd>Lspsaga open_floaterm<CR>', opts)
vim.keymap.set('t', '<F14>', [[<C-\><C-n><Cmd>Lspsaga close_floaterm<CR>]], opts)
