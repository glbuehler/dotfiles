return {
    'WhoIsSethDaniel/mason-tool-installer.nvim',
    opts = {
        ensure_installed = {
            -- lsps
            'lua-language-server',
            'clangd',
            'rust_analyzer',
            'gopls',
            'html',
            'jdtls',

            -- formatters
            'stylua',
        },
    },
}
