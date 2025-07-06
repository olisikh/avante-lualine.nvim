local component = require("lualine.component"):extend()
local highlight = require("lualine.highlight")

local avante_lualine = require("avante-lualine")

function component:init(opts)
    component.super.init(self, opts)
    self.options = vim.tbl_deep_extend("force", {}, opts or {})
end

function component:update_status()
    return avante_lualine.get_provider()
end

return component
