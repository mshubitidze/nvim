local null_ls = require("null-ls")

null_ls.setup({
    sources = {
        -- lua
        null_ls.builtins.formatting.stylua,

        -- python
        null_ls.builtins.formatting.black,

        -- web dev
        null_ls.builtins.diagnostics.eslint_d,
        null_ls.builtins.formatting.prettierd,
        null_ls.builtins.code_actions.xo,
    },
})
