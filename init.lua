local lazypath = vim.fn.stdpath 'data' .. '/lazy/lazy.nvim'

if not vim.loop.fs_stat(lazypath) then
    vim.fn.system {
        'git',
        'clone',
        '--filter=blob:none',
        'https://github.com/folke/lazy.nvim.git',
        '--branch=stable', -- latest stable release
        lazypath,
    }
end
vim.opt.rtp:prepend(lazypath)

vim.g.mapleader = ' '

local options = {
    signcolumn = 'yes',
    tabstop = 4,
    shiftwidth = 4,
    expandtab = true,
    number = true,
    relativenumber = true,
    list = true,
    listchars = {
        tab = '<- ',
        trail = '~',
        extends = '>',
        precedes = '<',
        space = '·',
    },
}

for index, value in pairs(options) do
    vim.opt[index] = value
end

require('lazy').setup 'plugins'
