local lsp_zero = require('lsp-zero')

lsp_zero.on_attach(function(client, bufnr)
    -- see :help lsp-zero-keybindings
    -- to learn the available actions
    lsp_zero.default_keymaps({buffer = bufnr})
end)

require('lspconfig').gopls.setup({})
require('lspconfig').jdtls.setup({})


vim.api.nvim_create_autocmd("BufWritePre", {
    buffer = buffer,
    callback = function()
        vim.lsp.buf.format { async = false }
    end
})
