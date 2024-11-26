return {
    "nvim-treesitter/nvim-treesitter",
    build = function()
        require("nvim-treesitter.install").update({ with_sync = true })()
    end,
    config = function()
	require('nvim-treesitter.configs').setup {
	    ensure_installed = { "c", "lua", "vim", "vimdoc", "query", "comment",
            "rust" },
	    highlight = {
		    enable = true,
	    }
	}

    end,
}
