return {
  {
    "saghen/blink.cmp",
    opts = function(_, opts)
      opts.keymap = opts.keymap or {}

      -- Your navigation keys
      opts.keymap["<C-j>"] = { "select_next" }
      opts.keymap["<C-k>"] = { "select_prev" }

      -- Disable default next/prev
      opts.keymap["<C-n>"] = false
      opts.keymap["<C-p>"] = false

      return opts
    end,
  },
}
