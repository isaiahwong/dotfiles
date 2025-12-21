return {
  "nvim-lualine/lualine.nvim",
  opts = function(_, opts)
    -- Keep anything else you like in lualine_c, but replace the path bit
    opts.sections.lualine_c = {
      -- (optional) show project/root name first
      -- require("lazyvim.util").lualine.root_dir(),

      {
        "filename",
        path = 1, -- 1=full relative, 2=full absolute, 3=absolute with ~
        shorting_target = 0, -- never collapse to /…/
        symbols = { modified = "●", readonly = "", unnamed = "[No Name]" },
      },
    }
  end,
}
