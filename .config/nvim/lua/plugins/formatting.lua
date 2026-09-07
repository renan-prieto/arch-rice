return {
    {
        "stevearc/conform.nvim",

        event = { "BufWritePre" },

        opts = {
            formatters_by_ft = {
                javascript = { "prettier" },
                javascriptreact = { "prettier" },
                typescript = { "prettier" },
                typescriptreact = { "prettier" },
                json = { "prettier" },
                jsonc = { "prettier" },
                css = { "prettier" },
                html = { "prettier" },
                markdown = { "prettier" },
            },

            format_on_save = {
                timeout_ms = 3000,
                lsp_fallback = true,
            },
        },
    },
}
