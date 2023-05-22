if not vim.g.vscode then
	require("core")
end
vim.api.nvim_set_keymap("t", "<Esc><Esc>", "<C-\\><C-n>", { noremap = true })
if vim.g.neovide then
	vim.o.guifont = "FiraCode Nerd Font Mono:h14" -- text below applies for VimScript
	vim.g.neovide_input_macos_alt_is_meta = true
	-- vim.g.neovide_fullscreen = true
	vim.g.neovide_input_use_logo = 1 -- enable use of the logo (cmd) key
	vim.g.neovide_confirm_quit = true
	vim.api.nvim_set_keymap("", "<D-v>", "+p<CR>", { noremap = true, silent = true })
	vim.api.nvim_set_keymap("!", "<D-v>", "<C-R>+", { noremap = true, silent = true })
	vim.api.nvim_set_keymap("t", "<D-v>", "<C-\\><C-n>+p<CR>i", { noremap = true, silent = true })
	vim.api.nvim_set_keymap("v", "<D-v>", "<C-R>+", { noremap = true, silent = true })
end
