
local autocmd = vim.api.nvim_create_autocmd
local augroup = vim.api.nvim_create_augroup

local sudo_write = require("rayner.sudo")

local rayner = augroup('rayner', {})

autocmd({"BufWriteCmd", }, {
    group = rayner,
    pattern = "*",
    callback = function()
        local ok, result = pcall(vim.cmd, 'w')
        if (ok) then
            return
        end
        sudo_write()
	vim.cmd("e! %")
    end,
})

