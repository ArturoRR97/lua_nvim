local options = {
  backup = false,                          -- creates a backup file
  cmdheight = 1,                           -- more space in the neovim command line for displaying messages
  completeopt = { "menuone", "noselect" }, -- mostly just for cmp
  fileencoding = "utf-8",                  -- the encoding written to a file
  hlsearch = true,                         -- highlight all matches on previous search pattern
  ignorecase = true,                       -- ignore case in search patterns
  mouse = "a",                             -- allow the mouse to be used in neovim
  pumheight = 10,                          -- pop up menu height
  showmode = false,                        -- we don't need to see things like -- INSERT -- anymore
  showtabline = 2,                         -- always show tabs
  smartcase = true,                        -- smart case
  smartindent = true,                      -- make indenting smarter again
  swapfile = false,                        -- creates a swapfile
  --termguicolors = true,                    -- set term gui colors (most terminals support this)
  writebackup = false,                     -- if a file is being edited by another program (or was written to file while editing with another program), it is not allowed to be edited
  shiftwidth = 2,                          -- the number of spaces inserted for each indentation
  tabstop = 2,                             -- insert 2 spaces for a tab
  cursorline = true,                       -- highlight the current line
  number = true,                           -- set numbered lines
  wrap = false,                            -- display lines as one long line
  guifont = "monospace:h17",               -- the font used in graphical neovim applications
  expandtab = true,
  title = true,
  hidden = true,
  updatetime = 50,
  syntax = "auto",
  laststatus = 2,
  spell = false,
  softtabstop = 2,
  guicursor = {"n-v-c:block-Cursor", "i:ver100-iCursor", "r:hor100-rCursor", "a:blinkon100"}
}

vim.opt.shortmess:append "c"

for k, v in pairs(options) do
  vim.opt[k] = v
end

vim.cmd "set whichwrap+=<,>,[,],h,l"
vim.cmd [[set iskeyword+=-]]
