return {
    'kevinhwang91/nvim-ufo',
    dependencies = { "kevinhwang91/promise-async" },
    config = function()
        vim.o.foldcolumn = "1" -- 显示折叠列
        vim.o.foldlevel = 99 -- 确保所有折叠默认展开
        vim.o.foldlevelstart = 99
        vim.o.foldenable = true -- 启用折叠功能
        -- Using ufo provider need remap `zR` and `zM`. If Neovim is 0.6.1, remap yourself
        vim.keymap.set('n', 'zR', require('ufo').openAllFolds)
        vim.keymap.set('n', 'zM', require('ufo').closeAllFolds)
        require('ufo').setup({
            provider_selector = function(bufnr, filetype, buftype)
                return {'treesitter', 'indent'}
            end
        })
    end,
}
