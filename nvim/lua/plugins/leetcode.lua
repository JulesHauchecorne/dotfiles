return {
    -- leetcode
    "Dhanus3133/LeetBuddy.nvim",
    lazy = true,
    cmd = "LBQuestions",
    config = function()
        require('leetbuddy').setup({
            domain = "com",
            language = "java",
            limit = 30,  -- Number of problems displayed in telescope
            keys = {
                select = "<CR>",
                reset = "<C-r>",
                easy = "<C-e>",
                medium = "<C-m>",
                hard = "<C-h>",
                accepted = "<C-a>",
                not_started = "<C-y>",
                tried = "<C-t>",
                page_next = "<C-l>",
                page_prev = "<C-h>",
            }
        })
    end
}
