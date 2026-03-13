return {
  "folke/which-key.nvim",
  opts = {
    spec = {
      { "<leader>f", group = "file" },
      { "<leader>ff", "<cmd>Telescope find_files<cr>", desc = "Find File" },
      { "<leader>fr", "<cmd>Telescope oldfiles<cr>", desc = "Open Recent File" },
      { "<leader>fn", "<cmd>enew<cr>", desc = "New File" },
    },
  },
}
