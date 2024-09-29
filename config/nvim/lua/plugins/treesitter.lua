return {
    "nvim-treesitter/nvim-treesitter",
    build = function()
        require("nvim-treesitter.install").update({ with_sync = true })()
        -- local configs = require("nvim-treesitter.configs")
        configs.setup({
            ensure_installed = {"lua", "javascript", "python"}
        })
    end
}
