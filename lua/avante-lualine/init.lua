local M = {}

-- From AndreM222 who took it from TJDevries :P
-- https://github.com/tjdevries/lazy-require.nvim
local function lazy_require(require_path)
    return setmetatable({}, {
        __index = function(_, key)
            return require(require_path)[key]
        end,

        __newindex = function(_, key, value)
            require(require_path)[key] = value
        end,
    })
end

local avante_config = lazy_require("avante.config")

M.get_provider = function()
    if not avante_config.provider then
        return "Avante: N/A"
    end

    return "Avante: " .. avante_config.provider
end

return M
