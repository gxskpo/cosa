vim.o.clipboard = "unnamedplus"
vim.g.mapleader = ","
vim.g.maplocalleader = ","

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

-- telescope

local builtin = require('telescope.builtin')

vim.keymap.set('n', '<leader>f', builtin.find_files, {})
vim.keymap.set('n', '<leader>,', builtin.buffers, {})

-- bufferline
vim.keymap.set('n', '<S-l>', '<CMD>BufferLineCycleNext<CR>')
vim.keymap.set('n', '<S-h>', '<CMD>BufferLineCyclePrev<CR>')

-- bufdel
vim.keymap.set('n', '<leader>.', "<CMD>BufDel<CR>", {})