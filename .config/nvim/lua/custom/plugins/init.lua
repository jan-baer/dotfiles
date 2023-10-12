local plugins = {
        {
                "lervag/vimtex",
                init = function()
                        vim.g.vimtex_view_method = 'zathura'
                end,
        },
        {
                "iamcco/markdown-preview.nvim",
                ft = { "markdown" },
                build = function()
                        vim.fn["mkdp#util#install"]()
                end,
                config = function()
                        vim.g.mkdp_auto_close = 0
                end
        },
}
return plugins
