local setup, nvimtree = pcall(require, "nvim-tree")
if not setup then
	return
end

local setup_devicons, devicons = pcall(require, "nvim-web-devicons")
if not setup_devicons then
	return
end

vim.g.loaded_netrwPlugin = 1
vim.opt.termguicolors = true

vim.cmd([[ highlight NvimTreeIndentMarker guifg=#3FC5FF ]])

nvimtree.setup({
	renderer = {
		icons = {
			show = {
				file = true,
				folder = true,
				git = true,
			},
			glyphs = {
				folder = {
					arrow_closed = "",
					arrow_open = "",
				},
			},
		},
	},
})
