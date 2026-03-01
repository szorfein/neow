local autocmd = vim.api.nvim_create_autocmd -- Create autocommand

-- Remove whitespace on save
autocmd('BufWritePre', {
    pattern = '',
    command = ':%s/\\s\\+$//e',
})

-- Don't auto commenting new lines
autocmd('BufEnter', {
    pattern = '',
    command = 'set fo-=c fo-=r fo-=o',
})

-- Create directory when not exist on save
autocmd('BufWritePre', {
    callback = function(args)
        local file = args.match
        if file:match('^%w+:[\\/][\\/]') then
            return
        end
        vim.fn.mkdir(vim.fn.fnamemodify(vim.uv.fs_realpath(file) or file, ':p:h'), 'p')
    end,
})
