return {
  {
    "folke/snacks.nvim",
    opts = {
      picker = {
        sources = {
          explorer = { hidden = true }, -- ← ここが重要
          -- ついでに file picker / grep も揃えるなら
          files = { hidden = true },
          grep = { hidden = true },
        },
      },
    },
  },
}
