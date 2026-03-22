return {
    {
    --"EdenEast/nightfox.nvim",
    --"folke/tokyonight.nvim",
    "catppuccin/nvim",
    name = "catppuccin",
    lazy = false,
    priority = 1000,
    config = function()
	require("catppuccin").setup({
	    flavour = "mocha", -- latte, frappe, macchiato, mocha
	    transparent_background = true,
	    float = {
		transparent = true,
		solid = false,
	    },
	})
	vim.cmd.colorscheme("catppuccin")
	vim.api.nvim_set_hl(0, 'LineNrAbove', {fg='#6c7086', bold=true})
	vim.api.nvim_set_hl(0, 'LineNrBelow', {fg='#6c7086', bold=true})
	vim.api.nvim_set_hl(0, 'LineNR', {fg='#cdd6f4', bold=true})

    end,
    },
    {
        "nvim-lualine/lualine.nvim",
        dependencies = {
            "nvim-tree/nvim-web-devicons",
        },
        opts = {
            theme = 'catppuccin-mocha',
        }
    }
}
