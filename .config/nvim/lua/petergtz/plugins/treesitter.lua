return {
  "nvim-treesitter/nvim-treesitter",
  build = ":TSUpdate",

  config = function()
    require("nvim-treesitter.configs").setup({
        ensure_installed = {
          "c",
          "cpp",
          "python",
          "html",
          "css",
          "matlab",
          "javascript",
          "lua",
          "vim",
          "vimdoc",
          "query",
          "json"
        },

        sync_install = false,
        auto_install = true,

        autopairs = {
          enable = true,
        },
        
        highlight = {
          enable = true,
          additional_vim_regex_highlighting = false,
        },

        indent = {
          enable = true,
          --disable = { "python", "c" } -- these and some other langs don't work well
        },
      })
  end
}

--return {
--  "nvim-treesitter/nvim-treesitter",
--  event = { "BufReadPre", "BufNewFile" },
--  build = ":TSUpdate",
--  dependencies = {
--    "windwp/nvim-ts-autotag",
--  },
--  config = function()
--    -- import nvim-treesitter plugin
--    local treesitter = require("nvim-treesitter.configs")
--
--    -- configure treesitter
--    treesitter.setup({ -- enable syntax highlighting
--      highlight = {
--        enable = true,
--      },
--      -- enable indentation
--      indent = { enable = false },
--      -- enable autotagging (w/ nvim-ts-autotag plugin)
--      autotag = {
--        enable = true,
--      },
--      -- ensure these language parsers are installed
--      ensure_installed = {
--        "json",
--        "bash",
--        "lua",
--        "vim",
--        "dockerfile",
--        "gitignore",
--        "query",
--        "vimdoc",
--        "c",
--        "python", 
--        "rust",
--      },
--      incremental_selection = {
--        enable = true,
--        keymaps = {
--          init_selection = "<C-space>",
--          node_incremental = "<C-space>",
--          scope_incremental = false,
--          node_decremental = "<bs>",
--        },
--      },
--    })
--  end,
--}
