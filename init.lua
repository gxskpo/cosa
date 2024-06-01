require("config.lazy")
require("config.keymaps")
require("config.lsp")
require("config.colors")

vim.o.cmdheight = 0

require("nvim-treesitter.configs").setup({
    highlight = {
        enable = true,
    }
})

require("neocord").setup({
    logo = "https://avatars.githubusercontent.com/u/6471485"
})
