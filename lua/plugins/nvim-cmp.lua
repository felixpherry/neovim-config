return {
  {
    "saghen/blink.cmp",
    version = false,
    build = "cargo build --release",
    opts = {
      keymap = {
        ["<C-j>"] = { "select_next", "fallback" },
        ["<C-k>"] = { "select_prev", "fallback" },
        ["<Tab>"] = { "accept", "fallback" },
        ["<C-x>"] = { "show", "hide" },
      },
    },
  },
}
