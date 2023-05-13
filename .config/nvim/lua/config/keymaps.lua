-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local Util = require("lazyvim.util")

local function map(mode, lhs, rhs, opts)
  local keys = require("lazy.core.handler").handlers.keys
  ---@cast keys LazyKeysHandler
  -- do not create the keymap if a lazy keys handler exists
  if not keys.active[keys.parse({ lhs, mode = mode }).id] then
    opts = opts or {}
    opts.silent = opts.silent ~= false
    vim.keymap.set(mode, lhs, rhs, opts)
  end
end

map("n", "<leader><space>", "<cmd>HopWord<cr>", { desc = "Jump to word" })

-- Toggle terminal
map("n", "<C-\\>", "<cmd>lua require('FTerm').toggle()<cr>")
map("t", "<C-\\>", "<cmd>lua require('FTerm').toggle()<cr>")

--jRest Nvim
map("n", "<leader>r", "<cmd>lua require('rest-nvim').run()<cr>")
