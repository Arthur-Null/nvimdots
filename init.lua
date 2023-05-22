if not vim.g.vscode then
	require("core")

	-- Release note
	vim.schedule(function()
		vim.notify_once(
			[[
We've released version v3.0.0!
Visit https://github.com/ayamir/nvimdots/releases to see the release notes.
If you have icons that can't be rendered correctly (e.g., 𑨩  and � ) or icons with incorrect size, be sure to read this!

To silence this message, remove it from `init.lua` at the config's root directory.

To check the glyphs size, make sure the following icons are very close to the crosses but there is no overlap:
XXXXXXXXX
]],
			vim.log.levels.WARN
		)
	end)
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
