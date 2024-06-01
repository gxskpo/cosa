return {
    "SergioRibera/codeshot.nvim",
    config = function()
        require("codeshot").setup({
            silent = true,
            window_controls = true,
            show_line_numbers = false,
            use_current_theme = false,
            theme = 'gruvbox-dark',
            background = "#F1D3DE",
            author_color = '#000',
            output = "raw"
        })
    end
}
