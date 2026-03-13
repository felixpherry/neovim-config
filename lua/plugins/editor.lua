return {
  -- Marks
  { "chentoast/marks.nvim", event = "VeryLazy", opts = {} },

  -- Undotree
  {
    "jiaoshijie/undotree",
    dependencies = "nvim-lua/plenary.nvim",
    config = function()
      require("undotree").setup({
        float_diff = true,
        layout = "left_bottom",
        position = "left",
        ignore_filetype = { "undotree", "undotreeDiff", "qf", "TelescopePrompt" },
        window = { winblend = 0 },
        keymaps = {
          ["j"] = "move_next",
          ["k"] = "move_prev",
          ["gj"] = "move2parent",
          ["J"] = "move_change_next",
          ["K"] = "move_change_prev",
          ["<cr>"] = "action_enter",
          ["p"] = "enter_diffbuf",
          ["q"] = "quit",
        },
      })
    end,
    keys = {
      { "<leader>uo", "<cmd>lua require('undotree').toggle()<cr>", desc = "UndoTree" },
    },
  },

  -- Multi-cursor
  { "mg979/vim-visual-multi", event = "VeryLazy" },

  -- LazyGit
  {
    "kdheepak/lazygit.nvim",
    cmd = { "LazyGit", "LazyGitConfig", "LazyGitCurrentFile", "LazyGitFilter", "LazyGitFilterCurrentFile" },
    dependencies = { "nvim-lua/plenary.nvim" },
    keys = {
      { "<leader>lg", "<cmd>LazyGit<cr>", desc = "LazyGit" },
    },
  },

  -- Disable flash (using leap instead)
  { "folke/flash.nvim", enabled = false },

  -- Leap
  { import = "lazyvim.plugins.extras.editor.leap" },
}
