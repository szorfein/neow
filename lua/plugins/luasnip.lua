-- docs
-- https://docs.astronvim.com/recipes/snippets/
return {
    'L3MON4D3/LuaSnip',
    event = 'InsertEnter',
    dependencies = { { 'rafamadriz/friendly-snippets', lazy = true } },
    postinstall = 'make install_jsregexp',
    specs = {
        { 'saghen/blink.cmp', optional = true, opts = { snippets = { preset = 'luasnip' } } },
    },
    config = function()
        local luasnip = require('luasnip')
        luasnip.setup({
            history = true,
            delete_check_events = 'TextChanged',
            region_check_events = 'CursorMoved',
        })
        -- add vscode exported completions
        require('luasnip.loaders.from_vscode').lazy_load({
            --paths = vim.g.vscode_snippets_path or ''
            --paths = { vim.fn.stdpath('config') .. '/snippets' },
        })
    end,
}
