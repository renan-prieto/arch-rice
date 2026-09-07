return {
    "AlphaTechnolog/pywal.nvim",
    name = "pywal",

    config = function()
        vim.opt.termguicolors = true
        require("pywal").setup()
    end,
}
