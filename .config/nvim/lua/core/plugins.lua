return require('packer').startup(function(use)
	use "wbthomason/packer.nvim"

--Theme
    use 'rebelot/kanagawa.nvim'

--Fuzzy finding
	use { 'nvim-telescope/telescope.nvim', tag = '0.1.6',
	requires = { {'nvim-lua/plenary.nvim'} }
}


--Syntax Highlighting
	use {
		'nvim-treesitter/nvim-treesitter',
		run = function()
			local ts_update = require('nvim-treesitter.install').update({ with_sync = true})
			ts_update()
		end,
	}


--CLI tree file explorer
	use {'nvim-tree/nvim-tree.lua',
	requires = { {'nvim-tree/nvim-web-devicons'}}
}

    use {
        'VonHeikemen/lsp-zero.nvim',
        branch = 'v3.x',
        requires = {

            --LSP Support
            {'williamboman/mason.nvim'},
            {'williamboman/mason-lspconfig.nvim'},
            {'neovim/nvim-lspconfig'},

            --Autocompletion
            {'hrsh7th/nvim-cmp'},
            {'hrsh7th/cmp-nvim-lsp'},
            
        }
    }

    use 'feline-nvim/feline.nvim'
end)
