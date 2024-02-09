return {
	"nvim-neo-tree/neo-tree.nvim",
	config = function()
		require("neo-tree").setup({
			window = {
				position = "right",
				width = 40,
			},
		})
	end,
}
