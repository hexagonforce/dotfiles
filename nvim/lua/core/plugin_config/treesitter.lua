require'nvim-treesitter.configs'.setup {
    ensure_installed = {"c", "lua", "python", "javascript", "rust"},
    sync_install = false,
    auto_install = true,
    highlight = {
        enable = true,
    },
}
