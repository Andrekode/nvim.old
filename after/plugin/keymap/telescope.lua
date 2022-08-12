local Remap = require("am.keymap")
local nnoremap = Remap.nnoremap

nnoremap("<C-p>", ":Telescope")
nnoremap("<leader>ps", ":lua require('telescope.builtin').grep_string({ search = vim.fn.input(\"Grep For > \")})<CR>")
nnoremap("<C-p>", ":lua require('telescope.builtin').git_files()<CR>")
nnoremap("<Leader>pf", ":lua require('telescope.builtin').find_files()<CR>")

nnoremap("<leader>pw", ":lua require('telescope.builtin').grep_string { search = vim.fn.expand(\"<cword>\") }<CR>")
nnoremap("<leader>pb", ":lua require('telescope.builtin').buffers()<CR>")
nnoremap("<leader>vh", ":lua require('telescope.builtin').help_tags()<CR>")
nnoremap("<leader>gc", ":lua require('theprimeagen.telescope').git_branches()<CR>")
nnoremap("<leader>gw", ":lua require('telescope').extensions.git_worktree.git_worktrees()<CR>")
nnoremap("<leader>gm", ":lua require('telescope').extensions.git_worktree.create_git_worktree()<CR>")
nnoremap("<leader>fb", ":lua require('telescope').extensions.file_browser.file_browser()<CR>")


--[[ 
Default keymaps file_browser
<A-c>/c	create	Create file/folder at current path (trailing path separator creates folder)
<S-CR>	create_from_prompt	Create and open file/folder from prompt (trailing path separator creates folder)
<A-r>/r	rename	Rename multi-selected files/folders
<A-m>/m	move	Move multi-selected files/folders to current path
<A-y>/y	copy	Copy (multi-)selected files/folders to current path
<A-d>/d	remove	Delete (multi-)selected files/folders
<C-o>/o	open	Open file/folder with default system application
<C-g>/g	goto_parent_dir	Go to parent directory
<C-e>/e	goto_home_dir	Go to home directory
<C-w>/w	goto_cwd	Go to current working directory (cwd)
<C-t>/t	change_cwd	Change nvim's cwd to selected folder/file(parent)
<C-f>/f	toggle_browser	Toggle between file and folder browser
<C-h>/h	toggle_hidden	Toggle hidden files/folders
<C-s>/s	toggle_all	Toggle all entries ignoring ./ and ../ ]]
