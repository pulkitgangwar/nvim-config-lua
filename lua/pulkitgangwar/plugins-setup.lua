-- auto install packer if not installed
local ensure_packer = function()
	local fn = vim.fn local install_path = fn.stdpath("data") .. "/site/pack/packer/start/packer.nvim"
	if fn.empty(fn.glob(install_path)) > 0 then
		fn.system({ "git", "clone", "--depth", "1", "https://github.com/wbthomason/packer.nvim", install_path })
		vim.cmd([[packadd packer.nvim]])
		return true
	end
	return false
end
local packer_bootstrap = ensure_packer()

vim.cmd([[ 
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins-setup.lua source <afile> | PackerSync
  augroup end
]])

local status, packer = pcall(require, "packer")
if not status then
	return
end


-- packer popup window
packer.init {
  display = {
    open_fn = function() 
      return require("packer.util").float { border = "rounded" }
    end,
  }
}



return packer.startup(function(use)
	use("wbthomason/packer.nvim")
	use("bluz71/vim-nightfly-guicolors")

	-- lua functions that many plugins use
	use("nvim-lua/plenary.nvim")

	-- tmux and split window navigation
	use("christoomey/vim-tmux-navigator")

	-- maximizes and restores current window
	use("szw/vim-maximizer")

	-- makes commenting easierj
	use("numToStr/Comment.nvim")

	-- file explorer
	use("nvim-tree/nvim-tree.lua")

	-- icons
	use("kyazdani42/nvim-web-devicons")

	-- statusline
	use("nvim-lualine/lualine.nvim")

	-- fuzzy finding
	use({ "nvim-telescope/telescope.nvim", branch = "0.1.x" })
	use({ "nvim-telescope/telescope-fzf-native.nvim", run = "make" })

	-- autocompletion
	-- use("hrsh7th/nvim-cmp")
	-- use("hrsh7th/cmp-buffer")
	-- use("hrsh7th/cmp-path")
  -- use("hrsh7th/cmp-cmdline")

	-- snippets
	-- use("L3MON4D3/LuaSnip") -- snippet engine
	-- use("saadparwaiz1/cmp_luasnip") -- for autocompletion
	-- use("rafamadriz/friendly-snippets") -- useful snippets

	-- managing and installing lsp servers
	-- use("williamboman/mason.nvim")
	-- use("williamboman/mason-lspconfig.nvim")

	-- configuring lsp servers
	use("neovim/nvim-lspconfig")
	-- use({ "glepnir/lspsaga.nvim", branch = "main" }) -- enhanced lsp uis

	-- configuring lsp servers
	-- use("hrsh7th/cmp-nvim-lsp") -- for autocompletion
	-- use("jose-elias-alvarez/typescript.nvim") -- additional functionality for typescript server (e.g. rename file & update imports)
	-- use("onsails/lspkind.nvim") -- vs-code like icons for autocompletion

	-- formatting & linting
	-- use("jose-elias-alvarez/null-ls.nvim") -- configure formatters & linters
	-- use("jayp0521/mason-null-ls.nvim") -- bridges gap b/w mason & null-ls

	-- treesitter configuration
	use({
		"nvim-treesitter/nvim-treesitter",
		run = function()
			require("nvim-treesitter.install").update({ with_sync = true })
		end,
	})

	-- auto closing
	-- use("windwp/nvim-autopairs") -- autoclose parens, brackets, quotes, etc...
	-- use({ "windwp/nvim-ts-autotag", after = "nvim-treesitter" }) -- autoclose tags
  

  -- buffer line support
  use("akinsho/bufferline.nvim")
  use("moll/vim-bbye")


  -- clipboard manager
  use("AckslD/nvim-neoclip.lua") 

  -- toggle terminal
  use("akinsho/toggleterm.nvim") 

  -- better visual error messages 
  use("folke/trouble.nvim")

  --  vim game
  use("ThePrimeagen/vim-be-good")


  -- auto pairs
  use("windwp/nvim-autopairs")


	if packer_bootstrap then
		require("packer").sync()
	end
end)
