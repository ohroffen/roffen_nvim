require'nvim-treesitter.configs'.setup {
  -- install language parser
  -- :TSInstallInfo command check parser installed
  ensure_installed = {"cpp", "c", "vim", "lua", "cmake", "python", "diff"},
  -- highlight
  highlight = {
    enable = true,
    additional_vim_regex_highlighting = false
  },
  -- 启用增量选择
  -- incremental_selection = {
  --   enable = true,
  --   keymaps = {
  --     init_selection = '<CR>',
  --     node_incremental = '<CR>',
  --     node_decremental = '<BS>',
  --     scope_incremental = '<TAB>',
  --   }
  -- },
  -- 启用基于Treesitter的代码格式化(=) . NOTE: This is an experimental feature.
  -- indent = {
  --   enable = true
  -- }
}
-- 开启 Folding
-- vim.wo.foldmethod = 'expr'
-- vim.wo.foldexpr = 'nvim_treesitter#foldexpr()'
-- 默认不要折叠
-- https://stackoverflow.com/questions/8316139/how-to-set-the-default-to-unfolded-when-you-open-a-file
vim.wo.foldlevel = 99
