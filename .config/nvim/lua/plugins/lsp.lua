return {
	{
		"neovim/nvim-lspconfig",
		opts = {
			servers = {
				html = {
					filetypes = { "html", "templ" },
				},
				htmx = {
					filetypes = { "html", "templ" },
				},
				tailwindcss = {
					filetypes = { "templ", "vue", "javascript", "typescript" },
					init_options = { userLanguages = { templ = "html" } },
				},
			},
		},
	},
}
