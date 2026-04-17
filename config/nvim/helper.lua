local M = {}

---@param repo string
---@return string
function M.gh(repo)
  return 'https://github.com/' .. repo
end

---@param keymaps {[1]: string|string[], [2]: string, [3]: string|function, [4]: vim.keymap.set.Opts}[]
function M.add_keymaps(keymaps)
  for _, v in ipairs(keymaps) do
    vim.keymap.set(table.unpack(v))
  end
end

---@param commands string[]
function M.add_cmds(commands)
  for _, v in ipairs(commands) do
    vim.api.nvim_create_user_command(v, v, {})
  end
end

return M
