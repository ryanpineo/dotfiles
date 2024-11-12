local opt = vim.opt

opt.background = "dark"
opt.guicursor = ""

opt.nu = true
opt.relativenumber = true

opt.tabstop = 4
opt.softtabstop = 4
opt.shiftwidth = 4
opt.expandtab = true
opt.smartindent = true
opt.wrap = false

opt.swapfile = false
opt.backup = false
opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
opt.undofile = true

opt.scrolloff = 8
opt.signcolumn = "number"

opt.updatetime = 50

opt.colorcolumn = "80"

opt.list = true
opt.listchars = { tab = "→ ", trail = "·", extends = "↷", precedes = "↶" }

-- Searching
opt.ignorecase = true
opt.smartcase = true
opt.hlsearch = false
opt.incsearch = true
opt.grepprg = "rg --vimgrep --smart-case"
