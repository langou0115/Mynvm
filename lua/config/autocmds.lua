-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
-- Add any additional autocmds here
-- 确保 neo-tree 已加载
require("neo-tree").setup({
    filesystem = {
        filtered_items = {
            visible = true, -- 显示隐藏文件
            hide_dotfiles = false, -- 不隐藏以点开头的文件
            hide_gitignored = false, -- 不隐藏被 .gitignore 忽略的文件
        },
    },
})

local lspconfig = require("lspconfig")
lspconfig.clangd.setup({
    cmd = { "clangd" },
    filetypes = { "c", "cpp", "objc", "objcpp" },
    root_dir = lspconfig.util.root_pattern("compile_commands.json", "compile_flags.txt", ".git"),
    settings = {
        clangd = {
            -- 你可以在这里添加其他 clangd 配置
        },
    },
})
