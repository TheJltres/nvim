return {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    lazy = false,
    opts = {
        ensure_installed = {
            "c",
            "lua",
            "vim",
            "bash"
        },
        sync_install = false,
        highlight = { enable = true },
        indent = { enable = true },
        auto_install = true,
    },
}
