print("hello")
local execute = vim.api.nvim_command
local fn = vim.fn

function pack_me()
    local pack_path = fn.stdpath("data") .. "/site/pack"
    local fmt = string.format

    local user = "wbthomason"
    local repo = "packer.nvim"
    local install_path = fmt("%s/packer/start/%s", pack_path, repo, repo)
    if fn.empty(fn.glob(install_path)) > 0 then
        execute(fmt("!git clone https://github.com/%s/%s %s", user, repo, install_path))
        execute(fmt("packadd %s", repo))
        execute("PackerSync")
    end
end

-- instala 
pack_me()

require("rayner.packer")
require("rayner.set")
require("rayner.remap")
