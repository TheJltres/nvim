return {
    "L3MON4D3/LuaSnip",
    -- follow latest release.
    version = "v2.*", -- Replace <CurrentMajor> by the latest released major (first number of latest release)
    -- install jsregexp (optional!).
    build = "make install_jsregexp",
    config = function()
        local luasnip = require('luasnip')
        vim.keymap.set({ "i", "s" }, "<C-l>", function() luasnip.jump(1) end, { silent = true })
        vim.keymap.set({ "i", "s" }, "<C-h>", function() luasnip.jump(-1) end, { silent = true })
    end
}
