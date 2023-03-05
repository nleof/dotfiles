local opt = vim.opt
local api = vim.api

--
-- Defaults
--

-- Tabs
opt.expandtab = true                -- Use spaces instead of tabs
opt.shiftwidth = 2                  -- Size of an indent
opt.tabstop = 2                     -- Number of spaces tabs count for
opt.smartindent = true              -- Insert indents automatically

-- Search
opt.smartcase = true                -- Do not ignore case with capitals
opt.ignorecase = true               -- Ignore case

-- UI
opt.mouse = "a"
opt.termguicolors = true            -- True color support
opt.number = true                   -- Show line numbers
opt.cursorline = true
opt.list = true                     -- Show some invisible characters
opt.splitbelow = true               -- Put new windows below current
opt.splitright = true               -- Put new windows right of current

-- Autocomplete
opt.completeopt = "menuone,noselect"
opt.wildmode = {'list', 'longest'}  -- Command-line completion mode

opt.joinspaces = false              -- No double spaces with join
opt.hidden = true                   -- Enable background buffers
opt.swapfile = false
-- opt.autochdir = true

--
-- Mappings
--

vim.g.mapleader=" "

-- Keep selection while indenting
api.nvim_set_keymap('v', '<', '<gv', { noremap = true, silent = true })
api.nvim_set_keymap('v', '>', '>gv', { noremap = true, silent = true })

-- Emacs mappings
api.nvim_set_keymap('i', '<C-a>', '<Esc>I', { noremap = true, silent = true })
api.nvim_set_keymap('i', '<C-e>', '<Esc>A', { noremap = true, silent = true })

-- Yank rest of the line
api.nvim_set_keymap('', 'Y', 'y$', {})

--
-- Languages options
--

api.nvim_command([[
autocmd FileType go setlocal shiftwidth=4 tabstop=4 softtabstop=4 noexpandtab
]])
