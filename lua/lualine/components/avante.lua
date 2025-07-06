return function()
  local ok, config = pcall(require, "avante.config")
  if not ok or type(config.provider) ~= "string" then
    return "Avante: N/A"
  end
  return "Avante: " .. config.provider
end
