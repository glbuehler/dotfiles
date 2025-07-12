-- Autoformat
return {
    'stevearc/conform.nvim',
    event = { 'BufWritePre' },
    cmd = { 'ConformInfo' },
    config = function()
        vim.api.nvim_create_user_command('ToggleFmtOnSave', function()
            vim.b.format_on_save = not vim.b.format_on_save
        end, {})

        require('conform').setup({
            notify_on_error = false,
            format_on_save = function(bufnr)
                if vim.b.format_on_save == nil then
                    vim.b.format_on_save = true
                end

                local lsp_ignore = { 'c', 'cpp', 'typescript', 'java' }
                if not vim.b.format_on_save or vim.tbl_contains(lsp_ignore, vim.bo[bufnr].filetype) then
                    return
                end

                return {
                    timeout_ms = 500,
                    lsp_format = 'fallback',
                }
            end,
            formatters_by_ft = {
                lua = { 'stylua' },
                html = { 'prettier' },
                -- Conform can also run multiple formatters sequentially
                -- python = { "isort", "black" },
                --
                -- You can use 'stop_after_first' to run the first available formatter from the list
                -- javascript = { "prettierd", "prettier", stop_after_first = true },
            },
        })
    end,
    keys = {
        {
            '<leader>f',
            function()
                require('conform').format({ async = true, lsp_fallback = true })
            end,
            mode = '',
            desc = '[F]ormat buffer',
        },
    },
}
