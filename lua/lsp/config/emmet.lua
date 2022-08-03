return {
	on_setup = function(server)
		server.setup({
			filetypes = { "html", "css", "typescriptreact", "javascriptreact", "sass", "scss", "less" },
		})
	end,
}
