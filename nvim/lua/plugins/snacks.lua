return {
  "folke/snacks.nvim",
  opts = {
    explorer = {
      hidden = true, -- Shows hidden files
      ignored = true, -- Shows git-ignored files
    },
    picker = {
      sources = {
        explorer = {
          hidden = true,
          ignored = true,
        },
      },
    },
  },
}
