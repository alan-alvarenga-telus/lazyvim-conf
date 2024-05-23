return {
  {
    "nvim-neotest/neotest",
    dependencies = { "nvim-neotest/nvim-nio", "nvim-neotest/neotest-jest", "nvim-neotest/neotest-python" },
    opts = function(_, opts)
      table.insert(
        opts.adapters,
        require("neotest-jest")({
          jestConfigFile = "custom.jest.config.ts",
          env = { CI = true },
          cwd = function()
            return vim.fn.getcwd()
          end,
        })
      )
      table.insert(opts.adapters, require("rustaceanvim.neotest"))
      table.insert(opts.adapters, require("neotest-zig"))
    end,
  },
}
