function ColorMyPencils(color)
	color = color or "rose-pine"
	vim.cmd.colorscheme(color)
end

return {
	"rose-pine/neovim",
	name = "rose-pine",
	priority = 900,
	config = function()
		require("rose-pine").setup({
			styles = {
				transparency = true,
			},
		})
		vim.cmd("colorscheme rose-pine")
		ColorMyPencils()
	end,
}
