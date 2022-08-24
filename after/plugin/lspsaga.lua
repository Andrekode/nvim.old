local Remap = require("am.keymap")
local nnoremap = Remap.nnoremap
local vnoremap = Remap.vnoremap
local inoremap = Remap.inoremap

local status, saga = pcall(require, "lspsaga")
if (not status) then return end

saga.init_lsp_saga {
  server_filetype_map = {
    typescript = 'typescript'
  }
}


nnoremap('<[e', '<Cmd>Lspsaga diagnostic_jump_next<CR>')
nnoremap(']e', '<Cmd>Lspsaga diagnostic_jump_prev<CR>')
nnoremap('K', '<Cmd>Lspsaga hover_doc<CR>')

-- code action 
nnoremap('<leader>ca', '<Cmd>Lspsaga code_action<CR>')
vnoremap('<leader>ca', "<cmd><C-U>Lspsaga range_code_action<CR>")

nnoremap('gd', '<Cmd>Lspsaga lsp_finder<CR>')
inoremap('<C-k>', '<Cmd>Lspsaga signature_help<CR>')
nnoremap('gp', '<Cmd>Lspsaga preview_definition<CR>')

-- rename
nnoremap('<leader>rn', '<Cmd>Lspsaga rename<CR>')
