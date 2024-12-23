return {
    "neovim/nvim-lspconfig",
    lazy = false,
    dependdencies = {
        "folke/lazydev.nvim",
        "j-hui/fidget.nvim",
    },
    config = function()
        vim.api.nvim_create_autocmd('LspAttach', {
            callback = function(args)
                local client = vim.lsp.get_client_by_id(args.data.client_id)
                if not client then return end

                -- if client.supports_method('textDocument/implementation') then
                --     -- Create a keymap for vim.lsp.buf.implementation
                -- end

                -- if client.supports_method('textDocument/completion') then
                --     vim.lsp.completion.enable(true, client.id, args.buf, { autotrigger = true })
                -- end

                if client.supports_method('textDocument/formatting') then
                    vim.api.nvim_create_autocmd('BufWritePre', {
                        buffer = args.buf,
                        callback = function()
                            vim.lsp.buf.format({
                                id = client.id,
                                bufnr = args.buf,
                            })
                        end
                    })
                end
            end
        })
    end
}
