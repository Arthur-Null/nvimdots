return function()
	require("modules.utils").load_plugin("ibl", {
		char = "│",
		context_char = "┃",
		show_first_indent_level = true,
		filetype_exclude = {
			"", -- for all buffers without a file type
			"alpha",
			"dashboard",
			"dotooagenda",
			"flutterToolsOutline",
			"fugitive",
			"git",
			"gitcommit",
			"help",
			"json",
			"log",
			"markdown",
			"NvimTree",
			"peekaboo",
			"startify",
			"TelescopePrompt",
			"todoist",
			"txt",
			"undotree",
			"vimwiki",
			"vista",
		},
		buftype_exclude = { "terminal", "nofile" },
		show_trailing_blankline_indent = false,
		show_current_context = true,
		context_patterns = {
			"^if",
			"^table",
			"block",
			"class",
			"for",
			"function",
			"if_statement",
			"import",
			"list_literal",
			"method",
			"selector",
			"type",
			"var",
			"while",
		},
		space_char_blankline = " ",
	})
end
