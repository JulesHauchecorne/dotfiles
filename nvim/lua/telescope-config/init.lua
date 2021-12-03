
require('telescope').setup {
  extensions = {
    fzf = {
      fuzzy = true,                    -- false will only do exact matching
      override_generic_sorter = true,  -- override the generic sorter
      override_file_sorter = true,     -- override the file sorter
      case_mode = "ignore_case",        -- or "ignore_case" or "respect_case"
    }
  }
}
require('telescope').load_extension('fzf')

local M = {}
M.search_dotfiles = function()
    require("telescope.builtin").git_files({
        prompt_title = "< Config Files >",
        cwd = vim.env.config,
        hidden = true,
    })
end

--M.go_fix = function()
--    require("telescope.builtin").lsp_code_actions({
--        layout_config = {
--            width = 0.2
--        }
--    })
--end

return M

