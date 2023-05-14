require("aidanboland.remap")
require("aidanboland.set")

vim.api.nvim_create_autocmd("BufWritePre", {
    buffer = buffer,
    callback = function()
        vim.lsp.buf.format { async = false }
    end
})
vim.api.nvim_create_autocmd({ "BufEnter", "BufWinEnter" }, {
    pattern = "*",
    callback = function()
        vim.api.nvim_set_hl(0, "ColorColumn", { fg = "#222222", bg = "#222222" })
    end
})
