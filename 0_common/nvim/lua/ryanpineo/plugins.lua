local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
    {
        "nvim-telescope/telescope.nvim",
        tag = "0.1.0",
        dependencies = {
            'nvim-lua/plenary.nvim',
        },
    },

    {
        "rose-pine/neovim",
        config = function()
            vim.cmd([[colorscheme rose-pine]])
        end,
    },

    {
        "christoomey/vim-tmux-navigator",
        cmd = {
            "TmuxNavigateLeft",
            "TmuxNavigateDown",
            "TmuxNavigateUp",
            "TmuxNavigateRight",
            "TmuxNavigatePrevious",
        },
        keys = {
            { "<c-h>", "<cmd><C-U>TmuxNavigateLeft<cr>" },
            { "<c-j>", "<cmd><C-U>TmuxNavigateDown<cr>" },
            { "<c-k>", "<cmd><C-U>TmuxNavigateUp<cr>" },
            { "<c-l>", "<cmd><C-U>TmuxNavigateRight<cr>" },
            { "<c-\\>", "<cmd><C-U>TmuxNavigatePrevious<cr>" },
        },
    },

    -- {
    --     "folke/trouble.nvim",
    --     dependencies = { "nvim-tree/nvim-web-devicons" },
    --     opts = {
    --         -- your configuration comes here
    --         -- or leave it empty to use the default settings
    --         -- refer to the configuration section below
    --     },
    -- },

    -- Your royal popeness
    { "tpope/vim-fugitive" }, -- git wrapper
    { "tpope/vim-surround" }, -- surround text objects with characters
    { "tpope/vim-commentary" }, -- fast commenting
    { "tpope/vim-repeat" }, -- allow plugins to be repeated with .
    { "tpope/vim-unimpaired" }, -- some useful mappings
    { "tpope/vim-eunuch" }, -- unix command sugar
    { "tpope/vim-abolish" }, -- case sensitive substitute
    { "tpope/vim-vinegar" }, -- cleans up netrw interface
    { "tpope/vim-endwise" },

    -- syntax highlights
    { "sheerun/vim-polyglot" },

    {"nvim-treesitter/nvim-treesitter", build = ":TSUpdate"},

    -- LSP
    {
        'VonHeikemen/lsp-zero.nvim',
        branch = 'v2.x',
        dependencies = {
            -- LSP Support
            {'neovim/nvim-lspconfig'},             -- Required
            {'williamboman/mason.nvim'},
            {'williamboman/mason-lspconfig.nvim'},

            -- Autocompletion
            {'hrsh7th/nvim-cmp'},     -- Required
            {'hrsh7th/cmp-buffer'},
            {'hrsh7th/cmp-path'},
            {'saadparwaiz1/cmp_luasnip'},
            {'hrsh7th/cmp-nvim-lsp'}, -- Required
            {'hrsh7th/cmp-nvim-lua'},

            -- Snippets
            {
            'L3MON4D3/LuaSnip',
            version = "v2.*",
            build = "make install_jsregexp",
            dependencies = { "rafamadriz/friendly-snippets" },
            config = function()
                require("luasnip.loaders.from_vscode").lazy_load()
                local ls = require("luasnip")
                vim.keymap.set({"i"}, "<C-s>e", function() ls.expand() end, {silent = true})
                vim.keymap.set({"i", "s"}, "<C-s>;", function() ls.jump(1) end, {silent = true})
                vim.keymap.set({"i", "s"}, "<C-s>,", function() ls.jump(-1) end, {silent = true})
                vim.keymap.set({"i", "s"}, "<C-E>", function()
                    if ls.choice_active() then
                        ls.change_choice(1)
                    end
                end, {silent = true})
            end,
            },
        }
    }
})
