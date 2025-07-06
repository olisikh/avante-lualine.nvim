return function()
    local ok, avante = pcall(require, "avante.config")
    if not ok or not avante or not avante.provider then
        return ""
    end
    return "Avante: " .. avante.config.provider
end
