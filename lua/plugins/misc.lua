return {
    {
        -- Add discord rich presence
        "IogaMaster/neocord",
        config = function()
            require("neocord").setup()
        end
    },
    {
        -- Take screenshots
        "SergioRibera/codeshot.nvim",
        config = function()
            require("codeshot").setup({
                silent = true,
                window_controls = false,
                show_line_numbers = false,
                use_current_theme = false,
                theme = 'gruvbox-dark',
                background = "#F1D3DE",
                author_color = '#000',
                output = "raw"
            })
        end
    }
}
