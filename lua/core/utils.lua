_G._ = {}

_.ping = function()
  print("pong")
end

---@param modname string
---@return unknown | nil
_.require = function(modname)
  local is_okay, module = pcall(require, modname)

  if is_okay then return module end

  vim.notify("Failed to require `" .. modname .. "`!", vim.log.levels.ERROR)
  return nil
end
