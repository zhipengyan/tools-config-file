---@type MappingsTable
local M = {}
local sections = {
  g = { function() end, "Git" },
}

M.general = {
  n = {
    [";"] = { ":", "enter command mode", opts = { nowait = true } },
  },
}

M.telescope = {
  plugin = true,
  n = {
    ["<leader>fc"] = { function() require("telescope.builtin").grep_string() end, "Find word under cursor" }
  }
}

M.nvimtree = {
  plugin = false,
}

M.neotree = {
  plugin = true,
  n = {
    ["<leader>e"] = { "<cmd>Neotree toggle<cr>", desc = "Toggle Explorer" },
    ["<leader>r"] = { "<cmd>Neotree reveal<cr>", desc = "Toggle Explorer" },
    ["<leader>o"] = {
      function()
        if vim.bo.filetype == "neo-tree" then
          vim.cmd.wincmd "p"
        else
          vim.cmd.Neotree "focus"
        end
      end,
      "Toggle Explorer Focus",
    },
  }
}

-- more keybinds!

return M
