vim.o.clipboard = "unnamedplus"
vim.g.mapleader = " "

function toggle_buffer_neotree()
    local neotree_win = vim.fn.bufwinnr("Neotree")

    if neotree_win ~= -1 then
        vim.cmd(neotree_win .. "wincmd w")
    else
        vim.cmd("30wincmd l")
        vim.cmd("Neotree")
    end
end

vim.api.nvim_set_keymap('n', '<C-f>', ":lua toggle_buffer_neotree()<CR>", { noremap = true })
