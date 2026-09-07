local uv = vim.uv or vim.loop

local file = vim.fn.expand("~/.cache/wal/colors.json")

local function reload_pywal()
    vim.schedule(function()
        if package.loaded["pywal"] then
            package.loaded["pywal"] = nil
        end

        vim.cmd("silent! colorscheme pywal")
        require("pywal").setup()
    end)
end

local watcher = uv.new_fs_event()

if watcher then
    watcher:start(file, {}, function()
        reload_pywal()
    end)
end
