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
	lazy = true,
	cmd = { "Pydocstring" },
	build = { "make install" },
}

return custom
