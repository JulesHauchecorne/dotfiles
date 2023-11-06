return {
    -- Lsp zero
    "VonHeikemen/lsp-zero.nvim",
    branch = "v2.x",
    lazy = true,
    ft = { "java", "lua", "c", "cpp", "js", "ts", "go", "py", "html", "css", "hs", "sql", "fish", "json", "xml", "sh", "bash" },
    config = function()
        local lsp = require('lsp-zero')

        lsp.preset('recommended')

        lsp.ensure_installed({
            'tsserver',
            --  'eslint',
            'lua_ls'
        })

        local cmp = require('cmp')
        local cmp_select = { behavior = cmp.SelectBehavior.Select }
        local cmp_mappings = lsp.defaults.cmp_mappings({
            ["<C-Space>"] = cmp.mapping.complete(),
            ['<CR>'] = cmp.mapping.confirm({ select = false })

        })

        lsp.setup_nvim_cmp({
            mapping = cmp_mappings
        })

        lsp.set_preferences({
            suggest_lsp_servers = false,
            sign_icons = {
                error = 'E',
                warn = 'W',
                hint = 'H',
                info = 'I'
            }
        })

        lsp.on_attach(function(client, bufnr)
            local opts = { buffer = bufnr, remap = false }

            vim.keymap.set("n", "gd", function() vim.lsp.buf.definition() end, opts)
--            vim.keymap.set("n", "K", function() vim.lsp.buf.hover() end, opts)
            vim.keymap.set("n", "<leader>vws", function() vim.lsp.buf.workspace_symbol() end, opts)
            vim.keymap.set("n", "[d", function() vim.diagnostic.goto_next() end, opts)
            vim.keymap.set("n", "]d", function() vim.diagnostic.goto_prev() end, opts)
            vim.keymap.set("n", "<leader>ca", function() vim.lsp.buf.code_action() end, opts)
            vim.keymap.set("n", "<leader>rr", function() vim.lsp.buf.references() end, opts)
            vim.keymap.set("n", "<leader>rn", function() vim.lsp.buf.rename() end, opts)
            vim.keymap.set("i", "<C-h>", function() vim.lsp.buf.signature_help() end, opts)
            vim.keymap.set('n', '<leader>er', function() vim.diagnostic.open_float() end, opts)
        end)

        -- for nvim jdtls to work
        lsp.skip_server_setup({ 'jdtls' })
        --
        --
        lsp.setup()


        cmp.setup({
            sources = {
                { name = 'path' },
                { name = 'vsnip' },
                { name = 'nvim_lsp' },
                { name = 'buffer',                 keyword_length = 3 },
                { name = 'luasnip',                keyword_length = 2 },
                { name = 'bootstrap' },
               { name = 'nvim_lsp_signature_help' },
            }
        })

        vim.diagnostic.config({
            virtual_text = true
        })
    end
}