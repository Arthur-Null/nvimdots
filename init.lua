if not vim.g.vscode then
	require("core")
end
if vim.g.neovide then
	vim.o.guifont = "FiraCode Nerd Font Mono:h14" -- text below applies for VimScript
	vim.g.neovide_input_macos_alt_is_meta = true
	vim.g.neovide_fullscreen = true
	vim.g.neovide_input_use_logo = 1 -- enable use of the logo (cmd) key
	vim.keymap.set("n", "<D-s>", ":w<CR>") -- Save
	vim.keymap.set("v", "<D-c>", '"+y') -- Copy
	vim.keymap.set("n", "<D-v>", '"+P') -- Paste normal mode
	vim.keymap.set("v", "<D-v>", '"+P') -- Paste visual mode
	vim.keymap.set("c", "<D-v>", "<C-R>+") -- Paste command mode
	vim.keymap.set("i", "<D-v>", '<ESC>l"+Pli') -- Paste insert modevim.g.neovide_remember_window_size = true
end
