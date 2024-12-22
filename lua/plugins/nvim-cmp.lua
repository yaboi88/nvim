return {
    'hrsh7th/nvim-cmp',
    dependencies = {
        'hrsh7th/cmp-nvim-lsp',
        'hrsh7th/cmp-buffer',
        'hrsh7th/cmp-path',
        'hrsh7th/cmp-cmdline',
        'L3MON4D3/LuaSnip',
        'hrsh7th/cmp-nvim-lsp-signature-help',
        'saadparwaiz1/cmp_luasnip',
        'rafamadriz/friendly-snippets',
    },
    config = function()
        local cmp = require('cmp')

        require("luasnip.loaders.from_vscode").lazy_load()

        cmp.setup({
            mapping = {
                ['<C-p>'] = cmp.mapping.select_prev_item(),
                ['<C-n>'] = cmp.mapping.select_next_item(),
                -- Add tab support
                ['<S-Tab>'] = cmp.mapping.select_prev_item(),
                ['<Tab>'] = cmp.mapping.select_next_item(),
                ['<C-S-f>'] = cmp.mapping.scroll_docs(-4),
                ['<C-f>'] = cmp.mapping.scroll_docs(4),
                ['<C-Space>'] = cmp.mapping.complete(),
                ['<C-e>'] = cmp.mapping.close(),
                ['<CR>'] = cmp.mapping.confirm({
                  behavior = cmp.ConfirmBehavior.Insert,
                  select = true,
                })
              },
            snippet = {
                expand = function( args )
                    require('luasnip').lsp_expand(args.body)
                end,
            },
              -- Installed sources:
            sources = {
                { name = 'nvim-lsp' },
                { name = 'luasnip' },
            }, {
              { name = 'path' },                              -- file paths
              { name = 'jvim_lsp', keyword_length = 3 },      -- from language server
              { name = 'nvim_lsp_signature_help'},            -- display function signatures with current parameter emphasized
              { name = 'nvim_lua', keyword_length = 2},       -- complete neovim's Lua runtime API such vim.lsp.*
              { name = 'buffer', keyword_length = 2 },        -- source current buffer
              { name = 'vsnip', keyword_length = 2 },         -- nvim-cmp source for vim-vsnip 
              { name = 'calc'},                               -- source for math calculation
            },
            window = {
                completion = cmp.config.window.bordered(),
                documentation = cmp.config.window.bordered(),
            },
            formatting = {
                fields = {'menu', 'abbr', 'kind'},
                format = function(entry, item)
                    local menu_icon ={
                        nvim_lsp = 'λ',
                        vsnip = '⋗',
                        buffer = 'Ω',
                        path = '🖫',
                    }
                    item.menu = menu_icon[entry.source.name]
                    return item
                end,
  },
        })
    end,
}
