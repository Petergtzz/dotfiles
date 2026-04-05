local options = {
  backup = false,
  clipboard = "unnamedplus",
  cmdheight = 2,
  completeopt = { "menuone", "noselect" } ,
  conceallevel = 0,
  fileencoding = "utf-8",
  hlsearch = true,
  incsearch = true,
  ignorecase = true,
  ro = false,
  mouse = "a",
  pumheight = 10,
  showmode = false,
  showtabline = 2,
  smartcase = true,
  smartindent = true,
  splitbelow = true,
  splitright = true,
  swapfile = false,
  termguicolors = true,
  timeoutlen = 1000,
  undofile = true,
  updatetime = 300,
  writebackup = false,
  expandtab = true,
  shiftwidth = 4,
  tabstop = 4,
  cursorline = false,
  number = true,
  relativenumber = true,
  numberwidth = 4,
  signcolumn = "yes",
  wrap = false,
  scrolloff = 4,
  sidescrolloff = 4,
  --guifont = "Cascadia_Mono:h10",
  guifont = "JetBrainsMono_Nerd_Font:h11",
}

for k, v in pairs(options) do
    vim.opt[k] = v
end

-- Create an autocommand group for file-specific settings
vim.api.nvim_create_augroup("FileTypeSpecific", { clear = true })

-- Set shiftwidth and tabstop to 2 for HTML, CSS, JavaScript, and Lua files
vim.api.nvim_create_autocmd("FileType", {
    pattern = { "html", "css", "javascript", "lua" },
    callback = function()
        vim.opt_local.shiftwidth = 2
        vim.opt_local.tabstop = 2
    end,
    group = "FileTypeSpecific",
})

vim.cmd("autocmd BufEnter * set formatoptions-=cro")
vim.cmd("autocmd BufEnter * setlocal formatoptions-=cro")

vim.opt.shortmess:append "c"

---- disable netrw (required by nvim-tree)
--vim.g.loaded_netrw = 1
--vim.g.loaded_netrwPlugin = 1
--
--local opt = vim.opt -- for conciseness
--
---- line numbers
--opt.relativenumber = true -- show relative line numbers
--opt.number = true -- shows absolute line number on cursor line (when relative number is on)
--
---- tabs & indentation
--opt.tabstop = 4 -- 2 spaces for tabs 
--opt.shiftwidth = 4 -- 2 spaces for indent width
--opt.expandtab = true -- expand tab to spaces
--opt.autoindent = true -- copy indent from current line when starting new one
--
---- line wrapping 
--opt.wrap = false -- disable line wrapping
--
---- search settings
--opt.ignorecase = true -- ignore case when searching
--opt.smartcase = true -- if you include mixed case in your search, assumes you want case-sensitive
--
---- cursor line
--opt.cursorline = true -- highlight the current cursor line
--
---- appearance 
--opt.termguicolors = true
--opt.background = "dark" -- colorschemes that can be light or dark will be made dark
--opt.signcolumn = "yes" -- show sign column so that text doesn't shift
--
---- backspace 
--opt.backspace = "indent,eol,start" -- allow backspace on indent, end of line or insert mode start position
--
---- clipboard
--opt.clipboard:append("unnamedplus") -- use system clipboard as default register
--
---- split windows
--opt.splitright = true -- split vertical window to the right
--opt.splitbelow = true -- split horizontal window to the bottom
--
--opt.iskeyword:append("-")
