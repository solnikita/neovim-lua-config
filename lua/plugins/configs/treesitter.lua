local status_ok, configs = pcall(require, "nvim-treesitter.configs")
if not status_ok then
	return
end

configs.setup({
	ensure_installed = "all",
	ignore_install = { "phpdoc" },
	autopairs = {
		enable = true,
	},
	indent = { enable = true, disable = { "python", "css" } },
	context_commentstring = {
		enable = true,
	},
	incremental_selection = {
		enable = true,
		keymaps = {
			node_incremental = "x",
			node_decremental = "X",
		}
	}
})
