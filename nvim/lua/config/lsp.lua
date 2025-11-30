vim.lsp.enable 'clangd'

vim.api.nvim_create_autocmd("LspAttach", {
    group = vim.api.nvim_create_augroup("lsp-attach", { clear = true }),
    callback = function(event)
        local client = vim.lsp.get_client_by_id(event.data.client_id)
        vim.keymap.set('n', 'gd', vim.lsp.buf.definition, { buffer = event.buf, desc = "LSP: Goto Definition" })
        vim.keymap.set('n', 'gD', vim.lsp.buf.declaration, { buffer = event.buf, desc = "LSP: Goto Declaration" })
        vim.keymap.set('n', 'gl', vim.lsp.buf.references, { buffer = event.buf, desc = "LSP: List References" })
        vim.keymap.set('n', 'K', vim.lsp.buf.hover, { buffer = event.buf, desc = "LSP: Desc" })
    end,
})
