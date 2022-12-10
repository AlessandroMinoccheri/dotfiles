local M = {}

function M.autoformat()
    -- auto format
    -- nvim 0.8 works
    if vim.fn.has('nvim-0.8') == 1 then
        vim.cmd [[
      autocmd BufWritePre *.html,*.css lua vim.lsp.buf.format { async = true }
      autocmd BufWritePre *.yaml,*.yml,*.json lua vim.lsp.buf.format { async = true }
      autocmd BufWritePre *.c,*.cpp lua vim.lsp.buf.format { async = true }
      autocmd BufWritePre *.rs,*.go lua vim.lsp.buf.format { async = true }
      autocmd BufWritePre *.ts,*.js,*.tsx lua vim.lsp.buf.format { async = true }
      autocmd BufWritePre *.py,*.sh lua vim.lsp.buf.format { async = true }
      autocmd BufWritePre *.lua lua vim.lsp.buf.format { async = true }
      autocmd BufWritePre *.php lua vim.lsp.buf.format { async = true }
    ]]
    else
        -- nvim 0.7 works
        vim.cmd [[
      autocmd BufWritePre *.html,*.css lua vim.lsp.buf.formatting_sync()
      autocmd BufWritePre *.yaml,*.yml,*.json lua vim.lsp.buf.formatting_sync()
      autocmd BufWritePre *.c,*.cpp lua vim.lsp.buf.formatting_sync()
      autocmd BufWritePre *.rs,*.go lua vim.lsp.buf.formatting_sync()
      autocmd BufWritePre *.ts,*.js,*.tsx lua vim.lsp.buf.formatting_sync()
      autocmd BufWritePre *.py,*.sh lua vim.lsp.buf.formatting_sync()
      autocmd BufWritePre *.lua lua vim.lsp.buf.formatting_sync()
      autocmd BufWritePre *.php lua vim.lsp.buf.formatting_sync()
    ]]
    end
end

return M
