return {
  {
    "saghen/blink.cmp",
    opts = {
      keymap = {
        ["<C-j>"] = { "select_next", "fallback" },
        ["<C-k>"] = { "select_prev", "fallback" },
        ["<Tab>"] = { "accept", "fallback" },
        ["<C-x>"] = { "show", "hide" },
      },
      fuzzy = { implementation = "prefer_rust" },
    },
  },
}
