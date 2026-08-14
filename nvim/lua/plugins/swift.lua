return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        sourcekit = {
          cmd = { "xcrun", "sourcekit-lsp" },
          capabilities = {
            workspace = {
              didChangeWatchedFiles = {
                dynamicRegistration = true,
              },
            },
          },
          filetypes = { "swift", "objective-c", "objective-cpp" },
          -- buildServer.json first, else the git root wins and the index is never found
          root_markers = { "buildServer.json", "Package.swift", ".git" },
        },
      },
    },
  },

  -- swift.vim handles highlighting; the treesitter parser needs nvim 0.12+ to build
  {
    "nvim-treesitter/nvim-treesitter",
    opts = function(_, opts)
      if type(opts.ensure_installed) == "table" then
        opts.ensure_installed = vim.tbl_filter(function(lang)
          return lang ~= "swift"
        end, opts.ensure_installed)
      end
    end,
  },

  {
    "stevearc/conform.nvim",
    opts = {
      formatters_by_ft = {
        swift = { "swiftformat" },
      },
    },
  },
}
