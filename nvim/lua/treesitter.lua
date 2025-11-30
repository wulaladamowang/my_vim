return {
    "nvim-treesitter/nvim-treesitter",
    main = "nvim-treesitter.configs",
    build = ":TSUpdate",
    opts = {
        highlight = {
            enable = true,
        },
        indent = {
            enable = true,
        },
    },
}
