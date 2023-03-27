local custom = {}

custom["rose-pine/neovim"] = {
	name = "rose-pine",
	lazy = false,
	priority = 1000,
	config = require("custom.rose-pine"),
}

custom["kylechui/nvim-surround"] = {
	lazy = false,
	config = require("custom.nvim-surround"),
}

custom["heavenshell/vim-pydocstring"] = {
	lazy = false,
	-- cmd = { "Pydocstring" },
	build = { "make install" },
	config = require("custom.pydocstring"),
}

custom["dpayne/CodeGPT.nvim"] = {
	lazy = true,
	dependencies = { "nvim-lua/plenary.nvim", "MunifTanjim/nui.nvim" },
	cmd = { "Chat" },
}

return custom
