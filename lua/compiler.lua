--vim.cmd(BufNewFile *.cpp execute "0r ~/coding/.template/template.cpp")
vim.api.nvim_create_autocmd(
    "BufNewFile",
    "*.cpp"
    -- command = "set tw=0"
    --"0r ~/coding/.template/template.cpp"
    )
