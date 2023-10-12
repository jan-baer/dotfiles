local M = {}

M.setup = function()
        -- Define the keymappings
        local set_keymap = vim.api.nvim_set_keymap
        local opts = { noremap = true, silent = true }

        set_keymap('n', '<C-h>', '<cmd>TmuxNavigateLeft<CR>', opts)
        set_keymap('n', '<C-l>', '<cmd>TmuxNavigateRight<CR>', opts)
        set_keymap('n', '<C-j>', '<cmd>TmuxNavigateDown<CR>', opts)
        set_keymap('n', '<C-k>', '<cmd>TmuxNavigateUp<CR>', opts)

        -- Normal mode toggle comment
        set_keymap('n', '<leader>#', '<cmd>lua require("Comment.api").toggle.linewise.current()<CR>', opts)

        -- Visual mode toggle comment
        set_keymap('v', '<leader>#', ':<C-U>lua require("Comment.api").toggle.linewise(vim.fn.visualmode())<CR>', opts)

        -- vertical split
        set_keymap('n', '<leader>pv', '<cmd>Vex<CR>', opts)

        -- grep
        set_keymap('n', '<leader>cn', '<cmd>cnext<CR>', opts)
        set_keymap('n', '<leader>cp', '<cmd>cprev<CR>', opts)
        set_keymap('n', '<leader>co', '<cmd>copen<CR>', opts)

        -- terminal mode
        set_keymap('t', '<Esc>', '<C-\\><C-n>', opts)
        set_keymap('n', '<leader>tw', '<cmd>terminal<CR>', opts)
        set_keymap('n', '<leader>tv', '<cmd>vertical :terminal<CR>', opts)

        -- cpp bindings
        -- Generate make files
        set_keymap('n', '<leader>mc', '<cmd>!cd ./build && cmake ..<CR>', opts)

        -- Build using CMake
        set_keymap('n', '<leader>mb', '<cmd>!cd ./build && make<CR>', opts)

        -- Run the executable (assuming it's named TodoManager)
        set_keymap('n', '<leader>mr', '<cmd>!cd ./build && ./TodoManager<CR>', opts)

        -- MD Preview
        set_keymap('n', '<leader>md', '<cmd>MarkdownPreview<CR>', opts)
end

return M
