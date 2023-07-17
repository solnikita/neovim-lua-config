return {
	{
		"folke/which-key.nvim",
		event = "VeryLazy",
		opts = {
			plugins = {
				marks = true, -- shows a list of your marks on ' and `
				registers = true, -- shows your registers on " in NORMAL or <C-r> in INSERT mode
				spelling = {
					enabled = true, -- enabling this will show WhichKey when pressing z= to select spelling suggestions
					suggestions = 20, -- how many suggestions should be shown in the list?
				},
				presets = {
					operators = true, -- adds help for operators like d, y, ... and registers them for motion / text object completion
					motions = true, -- adds help for motions
					text_objects = true, -- help for text objects triggered after entering an operator
					windows = true, -- default bindings on <c-w>
					nav = true, -- misc bindings to work with windows
					z = true, -- bindings for folds, spelling and others prefixed with z
					g = true, -- bindings for prefixed with g
				},
			},
			icons = {
				breadcrumb = "»", -- symbol used in the command line area that shows your active key combo
				separator = "", -- symbol used between a key and it's label
				group = " ", -- symbol prepended to a group
			},
			window = {
				border = "rounded", -- none, single, double, shadow
				position = "bottom", -- bottom, top
				margin = { 1, 0, 1, 0 }, -- extra window margin [top, right, bottom, left]
				padding = { 2, 2, 2, 2 }, -- extra window padding [top, right, bottom, left]
				winblend = 0,
			},
			layout = {
				height = { min = 4, max = 25 }, -- min and max height of the columns
				width = { min = 20, max = 50 }, -- min and max width of the columns
				spacing = 3, -- spacing between columns
				align = "left", -- align columns left, center or right
			},
			hidden = { "<silent>", "<cmd>", "<Cmd>", "<CR>", "call", "lua", "^:", "^ " }, -- hide mapping boilerplate
			show_help = true, -- show help message on the command line when the popup is visible
			triggers = "auto", -- automatically setup triggers
			triggers_blacklist = {
				-- list of mode / prefixes that should never be hooked by WhichKey
				-- this is mostly relevant for key maps that start with a native binding
				-- most people should not need to change this
				i = { "j", "k" },
				v = { "j", "k" },
			},
			defaults = {
				mode = { "n", "v" },
				["<leader>e"] = { "<cmd>NeoTreeFocus<cr>", "Explorer" },
				["<leader>E"] = { "<cmd>NeoTreeFocusToggle<cr>", "Explorer toggle" },
				["<leader>w"] = { "<cmd>w<CR>", "Save" },
				["<leader>q"] = { "<cmd>qa<CR>", "Quit" },
				["g"] = { name = "+goto" },
				["gz"] = { name = "+surround" },
				["]"] = { name = "+next" },
				["["] = { name = "+prev" },
				["<leader><tab>"] = { name = "+tabs" },
				["<leader>b"] = { name = "+buffer" },
				["<leader>c"] = { name = "+code" },
				["<leader>f"] = { name = "+file/find" },
				["<leader>g"] = { name = "+git" },
				["<leader>gh"] = { name = "+hunks" },
				["<leader>s"] = { name = "+search" },
				["<leader>u"] = { name = "+ui" },
				["<leader>x"] = { name = "+diagnostics/quickfix" },
				["<leader>h"] = { "<cmd>nohlsearch<CR>", "No Highlight" },
				["<leader>ff"] = {
					"<cmd>lua require('telescope.builtin').find_files(require('telescope.themes').get_dropdown{previewer = false})<cr>",
					"Find files",
				},
				["<leader>F"] = { "<cmd>Telescope live_grep theme=ivy<cr>", "Find Text" },
				["<leader>p"] = {
					"<cmd>lua require('telescope.builtin').buffers(require('telescope.themes').get_dropdown{previewer = false, sort_lastused = true, ignore_current_buffer = true })<cr>",
					"Buffers",
				},
				["gh"] = { "<cmd>Lspsaga lsp_finder<CR>", "Lsp finder" },
				["gd"] = { "<cmd>Telescope lsp_definitions<CR>", "Go definition" },
				["<leader>l"] = {
					name = "LSP",
					a = { "<cmd>Lspsaga code_action<<cr>", "Code Action" },
					d = {
						"<cmd>Telescope diagnostics bufnr=0<cr>",
						"Document Diagnostics",
					},
					w = {
						"<cmd>Telescope diagnostics<cr>",
						"Workspace Diagnostics",
					},
					f = { "<cmd>lua vim.lsp.buf.format{async=true}<cr>", "Format" },
					i = { "<cmd>LspInfo<cr>", "Info" },
					j = { "<cmd>Lspsaga diagnostic_jump_prev<CR>", "Next diagnostic" },
					k = { "<cmd>Lspsaga diagnostic_jump_prev<CR>", "Previous diagnostic" },
					c = { "<cmd>lua vim.lsp.codelens.run()<cr>", "CodeLens Action" },
					l = { "<cmd>Lspsaga show_line_diagnostics<cr>", "CodeLens Action" },
					q = { "<cmd>lua vim.diagnostic.setloclist()<cr>", "Quickfix" },
					r = { "<cmd>Lspsaga rename<CR>", "Lsp rename" },
					s = { "<cmd>Telescope lsp_document_symbols<cr>", "Document Symbols" },
					S = {
						"<cmd>Telescope lsp_dynamic_workspace_symbols<cr>",
						"Workspace Symbols",
					},
					o = { "<cmd>Lspsaga outline<CR>", "Saga outline" },
					t = { "<cmd>TroubleToggle<CR>", "Troubles" },
					z = { "<cmd>LspRestart<CR>", "LspRestart" },
				},
			},
		},
		config = function(_, opts)
			local wk = require("which-key")
			wk.setup(opts)
			wk.register(opts.defaults)
		end,
	},
	{
		"akinsho/bufferline.nvim",
		event = "VeryLazy",
		keys = {
			{ "<leader>bp", "<Cmd>BufferLineTogglePin<CR>", desc = "Toggle pin" },
			{ "<leader>bP", "<Cmd>BufferLineGroupClose ungrouped<CR>", desc = "Delete non-pinned buffers" },
			{ "<leader>bc", "<Cmd>bdelete!<CR>", desc = "Delete current buffer" },
		},
		opts = {
			options = {
				numbers = "none",
				indicator = {
					icon = "|",
					style = "none",
				},
				modified_icon = "●",
				close_icon = "",
				left_trunc_marker = "",
				right_trunc_marker = "",
				max_name_length = 30,
				max_prefix_length = 30,
				tab_size = 21,
				diagnostics = false, -- | "nvim_lsp" | "coc",
				diagnostics_update_in_insert = false,
				offsets = {
					{ filetype = "vista", text = "Tags", padding = 0 },
					{ filetype = "nvim-tree", text = "Explorer", padding = 0 },
				},
				show_buffer_icons = true,
				show_buffer_close_icons = true,
				show_close_icon = true,
				show_tab_indicators = true,
				persist_buffer_sort = true,
				separator_style = { "", "" },
				enforce_regular_tabs = true,
				always_show_bufferline = true,
			},
		},
	},
	{
		"nvim-lualine/lualine.nvim",
		config = function()
			require("plugins.configs.lualine")
		end,
	},
	{
		"nvim-neo-tree/neo-tree.nvim",
		config = function()
			require("plugins.configs.neotree")
		end,
	},
	{
		"xiyaowong/nvim-transparent",
		config = function()
			require("plugins.configs.transparent")
		end,
	},
	{
		"goolord/alpha-nvim",
		event = "VimEnter",
		config = function()
			require("alpha").setup(require("alpha.themes.startify").config)
		end,
	},
	{
		"echasnovski/mini.animate",
		event = "BufRead",
		config = function()
			require("plugins.configs.mini-animate")
		end,
	},
}
