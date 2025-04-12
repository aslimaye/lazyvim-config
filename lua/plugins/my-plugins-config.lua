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
  {
    "akinsho/toggleterm.nvim",
    lazy = true,
    cmd = { "ToggleTerm" },
    keys = {
      {
        "<leader>tf",
        function()
          local count = vim.v.count1
          require("toggleterm").toggle(count, 0, LazyVim.root.get(), "float")
        end,
        desc = "ToggleTerm (float root_dir)",
      },
      {
        "<leader>th",
        function()
          local count = vim.v.count1
          require("toggleterm").toggle(count, 15, LazyVim.root.get(), "horizontal")
        end,
        desc = "ToggleTerm (horizontal root_dir)",
      },
      {
        "<leader>tv",
        function()
          local count = vim.v.count1
          require("toggleterm").toggle(count, vim.o.columns * 0.4, LazyVim.root.get(), "vertical")
        end,
        desc = "ToggleTerm (vertical root_dir)",
      },
      {
        "<leader>tn",
        "<cmd>ToggleTermSetName<cr>",
        desc = "Set term name",
      },
      {
        "<leader>ts",
        "<cmd>TermSelect<cr>",
        desc = "Select term",
      },
      {
        "<leader>tt",
        "<cmd>ToggleTerm<cr>",
        desc = "ToggleTerm",
      },
      {
        "<leader>tT",
        function()
          require("toggleterm").toggle(1, 100, vim.loop.cwd(), "tab")
        end,
        desc = "ToggleTerm (tab cwd_dir)",
      },
    },
    opts = {
      -- size can be a number or function which is passed the current terminal
      size = function(term)
        if term.direction == "horizontal" then
          return 15
        elseif term.direction == "vertical" then
          return vim.o.columns * 0.4
        end
      end,
      open_mapping = [[<c-\>]],
      -- on_open = fun(t: Terminal), -- function to run when the terminal opens
      -- on_close = fun(t: Terminal), -- function to run when the terminal closes
      -- on_stdout = fun(t: Terminal, job: number, data: string[], name: string) -- callback for processing output on stdout
      -- on_stderr = fun(t: Terminal, job: number, data: string[], name: string) -- callback for processing output on stderr
      -- on_exit = fun(t: Terminal, job: number, exit_code: number, name: string) -- function to run when terminal process exits
      hide_numbers = true, -- hide the number column in toggleterm buffers
      shade_filetypes = {},
      shade_terminals = false,
      -- shading_factor = 3, -- the degree by which to darken to terminal colour, default: 1 for dark backgrounds, 3 for light
      start_in_insert = true,
      insert_mappings = true, -- whether or not the open mapping applies in insert mode
      terminal_mappings = true, -- whether or not the open mapping applies in the opened terminals
      persist_size = true,
      direction = "vertical" or "horizontal" or "window" or "float",
      -- direction = "vertical",
      close_on_exit = true, -- close the terminal window when the process exits
      -- shell = vim.o.shell, -- change the default shell
      -- This field is only relevant if direction is set to 'float'
      -- float_opts = {
      --   -- The border key is *almost* the same as 'nvim_open_win'
      --   -- see :h nvim_open_win for details on borders however
      --   -- the 'curved' border is a custom border type
      --   -- not natively supported but implemented in this plugin.
      --   border = 'single' or 'double' or 'shadow' or 'curved',
      --   width = <value>,
      --   height = <value>,
      --   winblend = 3,
      --   highlights = {
      --     border = "Normal",
      --     background = "Normal",
      --   }
      -- }
    },
  },
}
