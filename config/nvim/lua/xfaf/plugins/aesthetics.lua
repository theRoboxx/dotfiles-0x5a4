return {
    {
        "Mofiqul/dracula.nvim",
        lazy = false,
        priority = 1000,
        config = function()
            vim.cmd([[colorscheme dracula]])
        end,
    },
    {
        "nvim-lualine/lualine.nvim",
        opts = {
            sections = {
                lualine_a = { 'mode' },
                lualine_b = {
                    'branch',
                    'diff',
                    {
                        'diagnostics',
                        sources = { 'nvim_lsp' },
                        sections = { 'error', 'warn', 'info' },
                    }
                },
                lualine_c = { 'filename' },
                lualine_x = {
                    'encoding',
                    'fileformat',
                    'filetype'
                },
                lualine_y = { 'progress' },
                lualine_z = { 'location' }
            },
            options = {
                globalstatus = true,
                theme = 'dracula-nvim'
            }
        },
    },

    {
        "stevearc/dressing.nvim",
        config = true,
        event = "VeryLazy"
    },
    {
        "h-hg/numbers.nvim",
        config = true
    },
    {
        "kyazdani42/nvim-web-devicons",
        config = true,
        event = "VeryLazy"
    },
    {
        "eandrju/cellular-automaton.nvim",
        keys = {
            { "<leader>fml", "<cmd>CellularAutomaton make_it_rain<CR>" },
        },
        cmd = "CellularAutomaton"
    },
    {
        "tamton-aquib/duck.nvim",
        keys = {
            { "<leader>dc", "<cmd>lua require('duck').cook()<CR>" },
            {
                "<leader>dd",
                "",
                callback = function()
                    local filetype = vim.bo.filetype;
                    local d_u_c_k = {
                        rust = "🦀",
                        zig = "🦎",
                    }
                    require("duck").hatch(d_u_c_k[filetype] or "🦆")
                end
            }
        },
    },
    {
        "akinsho/bufferline.nvim",
        version = "*",
        dependencies = "kyazdani42/nvim-web-devicons",
        opts = {
            options = {
                show_close_icon = false,
                show_buffer_close_icons = false,
            }
        }
    },
    {
        "j-hui/fidget.nvim",
        config = true,
        tag = "legacy",
        event = "VeryLazy"
    }
}