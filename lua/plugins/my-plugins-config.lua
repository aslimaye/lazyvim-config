-- More information on syntax below:
-- https://www.lazyvim.org/configuration/plugins
return {
  {
	"dhananjaylatkar/cscope_maps.nvim",
	dependencies = {
		"folke/which-key.nvim", -- optional [for whichkey hints]
		"nvim-telescope/telescope.nvim", -- optional [for picker="telescope"]
		"ibhagwan/fzf-lua", -- optional [for picker="fzf-lua"]
		"echasnovski/mini.pick", -- optional [for picker="mini-pick"]
		"nvim-tree/nvim-web-devicons", -- optional [for devicons in telescope, fzf or mini.pick]
	},
	opts = {
		-- USE EMPTY FOR DEFAULT OPTIONS
		-- DEFAULTS ARE LISTED BELOW
		skip_input_prompt = true,
		cscope = {
			db_build_cmd = { script = "default", args = { "-bqkvR" } },
			project_rooter = {
				enable = true, -- "true" or "false"
				-- change cwd to where db_file is located
				change_cwd = false, -- "true" or "false"
			},
			picker = "fzf-lua", -- "quickfix", "telescope", "fzf-lua" or "mini-pick"
		},
	},
  },
  {
	'tzachar/local-highlight.nvim',
	config = function()
		require('local-highlight').setup({
			-- file_types = {'python', 'cpp'}, -- If this is given only attach to this
			-- OR attach to every filetype except:
			disable_file_types = { "" },
			-- hlgroup = "Search", -- Overrides default highlighting group to the that looks like the "Search" group
			cw_hlgroup = nil,
			-- Whether to display highlights in INSERT mode or not
			insert_mode = false,
			min_match_len = 1,
			max_match_len = math.huge,
			highlight_single_match = true,
		})
	end
  },
  {
	'Exafunction/codeium.vim',
  },
  {
	"snacks.nvim",
	opts = {
		scroll = { enabled = false },
	},
  },
}

