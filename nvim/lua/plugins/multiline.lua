return {
  "mg979/vim-visual-multi",
  branch = "master",
  lazy = false, -- Ensure the plugin loads during startup
  config = function()
    -- Optional: Customize default mappings
    vim.g.VM_default_mappings = 0
    -- Define your custom mappings here if needed
    vim.g.VM_add_cursor_at_pos_no_mappings = 1
  end,
}
