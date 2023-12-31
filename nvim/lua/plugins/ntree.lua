vim.g.loaded_netw = 1
vim.g.loaded_netrwPlugin = 1
vim.opt.termguicolors = true
require("nvim-tree").setup()
require("nvim-tree").setup({
    sort_by = "case_sensitive",
    view = {
	adaptive_size = true,
    },
    renderer = {
	group_empty = true,
    },
    filters = {
	dotfiles = true,
    },
})
