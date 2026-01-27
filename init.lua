-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")

require("lazy").setup({
  rocks = {
    hererocks = true, -- recommended if you do not have global installation of Lua 5.1.
  },
  spec = {
    {
      "3rd/image.nvim",
      opts = {},
    },
  },
})

