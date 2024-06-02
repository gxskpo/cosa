return {
    -- LSP Configuration & Plugins
    {
        -- Config lsp
        'neovim/nvim-lspconfig',
        config = function()
            require('plugins.lsp')
        end,
    },
    {
        -- Add lsp manager
        'williamboman/mason.nvim',
        'williamboman/mason-lspconfig.nvim',
        config = function()
            require('mason').setup()
            require('mason-lspconfig').setup()
        end
    },
    {
        -- Add autocomplete
        'hrsh7th/nvim-cmp',
        dependencies = {
            'hrsh7th/cmp-nvim-lsp',
            'hrsh7th/cmp-buffer',
            'hrsh7th/cmp-path',
            'hrsh7th/cmp-cmdline',
            'L3MON4D3/LuaSnip',
            'saadparwaiz1/cmp_luasnip'
        },
    }
}
