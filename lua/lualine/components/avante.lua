return function()
    local ok, config = pcall(require, "avante.config")
    if not ok or type(config.provider) ~= "string" then
        return "Avante:  "
    end

    if config.provider == "claude" then
        return "Avante: 󰛄 "
    elseif config.provider == "openai" then
        return "Avante: 󰶘 "
    elseif config.provider == "azure" then
        return "Avante:  "
    elseif config.provider == "gemini" then
        return "Avante:  "
    elseif config.provider == "copilot" then
        return "Avante:  "
    end

    return "Avante: " .. config.provider
end
