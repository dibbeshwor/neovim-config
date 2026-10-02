return {
  {
    "saghen/blink.cmp",
    opts = {
      fuzzy = {
        frecency = {
          -- Avoid the old root-owned blink/cmp directory.
          path = vim.fn.stdpath("state") .. "/blink-cmp/frecency.dat",
        },
      },
    },
  },
}
