return {
  "nvim-neotest/neotest",
  optional = true,
  dependencies = {
    "nvim-neotest/nvim-nio",
    "nvim-neotest/neotest-jest",
    "nvim-neotest/neotest-python",
    "rustaceanvim.neotest",
  },
  opts = function(_, opts)
    opts.adapters = opts.adapters or {}
    vim.list_extend(opts.adapters, {
      require("rustaceanvim.neotest"),
      require("neotest-zig"),
      require("neotest-python"),
      require("neotest-jest"),
    })
  end,
}
