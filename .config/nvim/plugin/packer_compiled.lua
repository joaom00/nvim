-- Automatically generated packer.nvim plugin loader code

if vim.api.nvim_call_function('has', {'nvim-0.5'}) ~= 1 then
  vim.api.nvim_command('echohl WarningMsg | echom "Invalid Neovim version for packer.nvim! | echohl None"')
  return
end

vim.api.nvim_command('packadd packer.nvim')

local no_errors, error_msg = pcall(function()

_G._packer = _G._packer or {}
_G._packer.inside_compile = true

local time
local profile_info
local should_profile = false
if should_profile then
  local hrtime = vim.loop.hrtime
  profile_info = {}
  time = function(chunk, start)
    if start then
      profile_info[chunk] = hrtime()
    else
      profile_info[chunk] = (hrtime() - profile_info[chunk]) / 1e6
    end
  end
else
  time = function(chunk, start) end
end

local function save_profiles(threshold)
  local sorted_times = {}
  for chunk_name, time_taken in pairs(profile_info) do
    sorted_times[#sorted_times + 1] = {chunk_name, time_taken}
  end
  table.sort(sorted_times, function(a, b) return a[2] > b[2] end)
  local results = {}
  for i, elem in ipairs(sorted_times) do
    if not threshold or threshold and elem[2] > threshold then
      results[i] = elem[1] .. ' took ' .. elem[2] .. 'ms'
    end
  end
  if threshold then
    table.insert(results, '(Only showing plugins that took longer than ' .. threshold .. ' ms ' .. 'to load)')
  end

  _G._packer.profile_output = results
end

time([[Luarocks path setup]], true)
local package_path_str = "/home/joaom/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?.lua;/home/joaom/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?/init.lua;/home/joaom/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?.lua;/home/joaom/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?/init.lua"
local install_cpath_pattern = "/home/joaom/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/lua/5.1/?.so"
if not string.find(package.path, package_path_str, 1, true) then
  package.path = package.path .. ';' .. package_path_str
end

if not string.find(package.cpath, install_cpath_pattern, 1, true) then
  package.cpath = package.cpath .. ';' .. install_cpath_pattern
end

time([[Luarocks path setup]], false)
time([[try_loadstring definition]], true)
local function try_loadstring(s, component, name)
  local success, result = pcall(loadstring(s), name, _G.packer_plugins[name])
  if not success then
    vim.schedule(function()
      vim.api.nvim_notify('packer.nvim: Error running ' .. component .. ' for ' .. name .. ': ' .. result, vim.log.levels.ERROR, {})
    end)
  end
  return result
end

time([[try_loadstring definition]], false)
time([[Defining packer_plugins]], true)
_G.packer_plugins = {
  ["Comment.nvim"] = {
    config = { "\27LJ\2\n8\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\15jm.comment\frequire\0" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/joaom/.local/share/nvim/site/pack/packer/opt/Comment.nvim",
    url = "https://github.com/numToStr/Comment.nvim"
  },
  LuaSnip = {
    config = { "\27LJ\2\n9\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\16jm.snippets\frequire\0" },
    loaded = true,
    path = "/home/joaom/.local/share/nvim/site/pack/packer/start/LuaSnip",
    url = "https://github.com/L3MON4D3/LuaSnip"
  },
  aurora = {
    loaded = true,
    path = "/home/joaom/.local/share/nvim/site/pack/packer/start/aurora",
    url = "https://github.com/ray-x/aurora"
  },
  catppuccin = {
    loaded = true,
    path = "/home/joaom/.local/share/nvim/site/pack/packer/start/catppuccin",
    url = "https://github.com/catppuccin/nvim"
  },
  ["cmp-buffer"] = {
    loaded = true,
    path = "/home/joaom/.local/share/nvim/site/pack/packer/start/cmp-buffer",
    url = "https://github.com/hrsh7th/cmp-buffer"
  },
  ["cmp-cmdline"] = {
    loaded = true,
    path = "/home/joaom/.local/share/nvim/site/pack/packer/start/cmp-cmdline",
    url = "https://github.com/hrsh7th/cmp-cmdline"
  },
  ["cmp-git"] = {
    config = { "\27LJ\2\nk\0\0\4\0\6\0\t6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\4\0005\3\3\0=\3\5\2B\0\2\1K\0\1\0\14filetypes\1\0\0\1\3\0\0\14gitcommit\19COMMIT_EDITMSG\nsetup\fcmp_git\frequire\0" },
    load_after = {},
    loaded = true,
    needs_bufread = false,
    path = "/home/joaom/.local/share/nvim/site/pack/packer/opt/cmp-git",
    url = "https://github.com/petertriho/cmp-git"
  },
  ["cmp-nvim-lsp"] = {
    loaded = true,
    path = "/home/joaom/.local/share/nvim/site/pack/packer/start/cmp-nvim-lsp",
    url = "https://github.com/hrsh7th/cmp-nvim-lsp"
  },
  ["cmp-nvim-lua"] = {
    loaded = true,
    path = "/home/joaom/.local/share/nvim/site/pack/packer/start/cmp-nvim-lua",
    url = "https://github.com/hrsh7th/cmp-nvim-lua"
  },
  ["cmp-path"] = {
    loaded = true,
    path = "/home/joaom/.local/share/nvim/site/pack/packer/start/cmp-path",
    url = "https://github.com/hrsh7th/cmp-path"
  },
  cmp_luasnip = {
    loaded = true,
    path = "/home/joaom/.local/share/nvim/site/pack/packer/start/cmp_luasnip",
    url = "https://github.com/saadparwaiz1/cmp_luasnip"
  },
  ["colorbuddy.vim"] = {
    loaded = true,
    path = "/home/joaom/.local/share/nvim/site/pack/packer/start/colorbuddy.vim",
    url = "https://github.com/tjdevries/colorbuddy.vim"
  },
  ["committia.vim"] = {
    loaded = true,
    path = "/home/joaom/.local/share/nvim/site/pack/packer/start/committia.vim",
    url = "https://github.com/rhysd/committia.vim"
  },
  ["diffview.nvim"] = {
    config = { "\27LJ\2\nY\0\0\2\0\6\0\r6\0\0\0009\0\1\0+\1\1\0=\1\2\0006\0\0\0009\0\1\0+\1\1\0=\1\3\0006\0\0\0009\0\1\0'\1\5\0=\1\4\0K\0\1\0\5\16colorcolumn\tlist\twrap\awo\bvim�\2\1\0\5\0\20\0\0236\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\6\0005\3\4\0005\4\3\0=\4\5\3=\3\a\0025\3\t\0003\4\b\0=\4\n\3=\3\v\0025\3\r\0005\4\f\0=\4\14\0035\4\15\0=\4\16\0035\4\17\0=\4\18\3=\3\19\2B\0\2\1K\0\1\0\fkeymaps\23file_history_panel\1\0\1\6q\27<Cmd>DiffviewClose<CR>\15file_panel\1\0\1\6q\27<Cmd>DiffviewClose<CR>\tview\1\0\0\1\0\1\6q\27<Cmd>DiffviewClose<CR>\nhooks\18diff_buf_read\1\0\0\0\17default_args\1\0\1\21enhanced_diff_hl\2\24DiffviewFileHistory\1\0\0\1\2\0\0\6%\nsetup\rdiffview\frequire\0" },
    loaded = true,
    needs_bufread = false,
    path = "/home/joaom/.local/share/nvim/site/pack/packer/opt/diffview.nvim",
    url = "https://github.com/sindrets/diffview.nvim"
  },
  ["git-worktree.nvim"] = {
    loaded = true,
    path = "/home/joaom/.local/share/nvim/site/pack/packer/start/git-worktree.nvim",
    url = "https://github.com/ThePrimeagen/git-worktree.nvim"
  },
  ["github-notifications.nvim"] = {
    loaded = true,
    path = "/home/joaom/.local/share/nvim/site/pack/packer/start/github-notifications.nvim",
    url = "https://github.com/rlch/github-notifications.nvim"
  },
  ["gitsigns.nvim"] = {
    config = { "\27LJ\2\n9\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\16jm.gitsigns\frequire\0" },
    loaded = true,
    path = "/home/joaom/.local/share/nvim/site/pack/packer/start/gitsigns.nvim",
    url = "https://github.com/lewis6991/gitsigns.nvim"
  },
  ["go.nvim"] = {
    config = { "\27LJ\2\n�\2\0\0\6\0\n\0\0156\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0006\3\4\0009\3\5\0039\3\6\3'\5\a\0B\3\2\2'\4\b\0&\3\4\3=\3\t\2B\0\2\1K\0\1\0\rlog_path\20/tmp/gonvim.log\n$HOME\vexpand\afn\bvim\1\0\b\28lsp_document_formatting\2\16test_runner\ago\18dap_debug_gui\2\17dap_debug_vt\ttrue\rgoimport\ngopls\14dap_debug\2\17lsp_codelens\1\14filstruct\ngopls\nsetup\ago\frequire\0" },
    loaded = false,
    needs_bufread = true,
    only_cond = false,
    path = "/home/joaom/.local/share/nvim/site/pack/packer/opt/go.nvim",
    url = "https://github.com/ray-x/go.nvim"
  },
  ["gruvbox-baby"] = {
    loaded = true,
    path = "/home/joaom/.local/share/nvim/site/pack/packer/start/gruvbox-baby",
    url = "https://github.com/luisiacc/gruvbox-baby"
  },
  ["gruvbox.nvim"] = {
    loaded = true,
    path = "/home/joaom/.local/share/nvim/site/pack/packer/start/gruvbox.nvim",
    url = "https://github.com/ellisonleao/gruvbox.nvim"
  },
  ["gruvbuddy.nvim"] = {
    loaded = true,
    path = "/home/joaom/.local/share/nvim/site/pack/packer/start/gruvbuddy.nvim",
    url = "https://github.com/tjdevries/gruvbuddy.nvim"
  },
  ["headlines.nvim"] = {
    config = { "\27LJ\2\n:\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\17jm.headlines\frequire\0" },
    loaded = true,
    path = "/home/joaom/.local/share/nvim/site/pack/packer/start/headlines.nvim",
    url = "https://github.com/lukas-reineke/headlines.nvim"
  },
  ["hop.nvim"] = {
    config = { "\27LJ\2\n&\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\vjm.hop\frequire\0" },
    loaded = true,
    path = "/home/joaom/.local/share/nvim/site/pack/packer/start/hop.nvim",
    url = "https://github.com/phaazon/hop.nvim"
  },
  ["indent-blankline.nvim"] = {
    config = { "\27LJ\2\n:\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\17jm.blankline\frequire\0" },
    loaded = true,
    path = "/home/joaom/.local/share/nvim/site/pack/packer/start/indent-blankline.nvim",
    url = "https://github.com/lukas-reineke/indent-blankline.nvim"
  },
  ["lsp-rooter.nvim"] = {
    config = { "\27LJ\2\n8\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\15lsp-rooter\frequire\0" },
    loaded = true,
    path = "/home/joaom/.local/share/nvim/site/pack/packer/start/lsp-rooter.nvim",
    url = "https://github.com/ahmedkhalf/lsp-rooter.nvim"
  },
  ["lsp_signature.nvim"] = {
    config = { "\27LJ\2\n�\1\0\0\3\0\4\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0B\0\2\1K\0\1\0\1\0\a\tbind\2\15toggle_key\n<C-x>\15max_height\3\4\ffix_pos\1\16hint_enable\2#floating_window_above_cur_line\2\20floating_window\2\nsetup\18lsp_signature\frequire\0" },
    loaded = true,
    path = "/home/joaom/.local/share/nvim/site/pack/packer/start/lsp_signature.nvim",
    url = "https://github.com/ray-x/lsp_signature.nvim"
  },
  ["lspkind-nvim"] = {
    loaded = true,
    path = "/home/joaom/.local/share/nvim/site/pack/packer/start/lspkind-nvim",
    url = "https://github.com/onsails/lspkind-nvim"
  },
  ["lualine.nvim"] = {
    config = { "\27LJ\2\n8\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\15jm.lualine\frequire\0" },
    loaded = true,
    path = "/home/joaom/.local/share/nvim/site/pack/packer/start/lualine.nvim",
    url = "https://github.com/nvim-lualine/lualine.nvim"
  },
  ["lush.nvim"] = {
    loaded = true,
    path = "/home/joaom/.local/share/nvim/site/pack/packer/start/lush.nvim",
    url = "https://github.com/rktjmp/lush.nvim"
  },
  ["markdown-preview.nvim"] = {
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/joaom/.local/share/nvim/site/pack/packer/opt/markdown-preview.nvim",
    url = "https://github.com/iamcco/markdown-preview.nvim"
  },
  ["minimal.nvim"] = {
    loaded = true,
    path = "/home/joaom/.local/share/nvim/site/pack/packer/start/minimal.nvim",
    url = "https://github.com/Yazeed1s/minimal.nvim"
  },
  ["nautilus.nvim"] = {
    loaded = true,
    path = "/home/joaom/.local/share/nvim/site/pack/packer/start/nautilus.nvim",
    url = "https://github.com/pwntester/nautilus.nvim"
  },
  neogit = {
    loaded = true,
    path = "/home/joaom/.local/share/nvim/site/pack/packer/start/neogit",
    url = "https://github.com/TimUntersberger/neogit"
  },
  ["neoscroll.nvim"] = {
    config = { "\27LJ\2\n:\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\17jm.neoscroll\frequire\0" },
    loaded = true,
    path = "/home/joaom/.local/share/nvim/site/pack/packer/start/neoscroll.nvim",
    url = "https://github.com/karb94/neoscroll.nvim"
  },
  neovim = {
    loaded = true,
    path = "/home/joaom/.local/share/nvim/site/pack/packer/start/neovim",
    url = "https://github.com/404-theme/neovim"
  },
  ["nlsp-settings.nvim"] = {
    loaded = true,
    path = "/home/joaom/.local/share/nvim/site/pack/packer/start/nlsp-settings.nvim",
    url = "https://github.com/tamago324/nlsp-settings.nvim"
  },
  ["nui.nvim"] = {
    loaded = true,
    path = "/home/joaom/.local/share/nvim/site/pack/packer/start/nui.nvim",
    url = "https://github.com/MunifTanjim/nui.nvim"
  },
  ["null-ls.nvim"] = {
    loaded = true,
    path = "/home/joaom/.local/share/nvim/site/pack/packer/start/null-ls.nvim",
    url = "https://github.com/jose-elias-alvarez/null-ls.nvim"
  },
  ["nvim-autopairs"] = {
    config = { "\27LJ\2\n�\1\0\0\6\0\f\0\0156\0\0\0'\2\1\0B\0\2\0029\1\2\0005\3\3\0005\4\5\0005\5\4\0=\5\6\0045\5\a\0=\5\b\4=\4\t\0035\4\n\0=\4\v\3B\1\2\1K\0\1\0\14fast_wrap\1\0\1\bmap\n<c-j>\14ts_config\15javascript\1\2\0\0\20template_string\blua\1\0\0\1\2\0\0\vstring\1\0\2\rcheck_ts\2\24close_triple_quotes\2\nsetup\19nvim-autopairs\frequire\0" },
    load_after = {},
    loaded = true,
    needs_bufread = false,
    path = "/home/joaom/.local/share/nvim/site/pack/packer/opt/nvim-autopairs",
    url = "https://github.com/windwp/nvim-autopairs"
  },
  ["nvim-bufferline.lua"] = {
    config = { "\27LJ\2\n;\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\18jm.bufferline\frequire\0" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/joaom/.local/share/nvim/site/pack/packer/opt/nvim-bufferline.lua",
    url = "https://github.com/akinsho/nvim-bufferline.lua"
  },
  ["nvim-cmp"] = {
    after = { "cmp-git", "tabout.nvim", "nvim-autopairs" },
    config = { "\27LJ\2\n;\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\18jm.completion\frequire\0" },
    loaded = true,
    only_config = true,
    path = "/home/joaom/.local/share/nvim/site/pack/packer/start/nvim-cmp",
    url = "https://github.com/hrsh7th/nvim-cmp"
  },
  ["nvim-colorizer.lua"] = {
    config = { "\27LJ\2\n:\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\17jm.colorizer\frequire\0" },
    loaded = true,
    path = "/home/joaom/.local/share/nvim/site/pack/packer/start/nvim-colorizer.lua",
    url = "https://github.com/norcalli/nvim-colorizer.lua"
  },
  ["nvim-dap"] = {
    loaded = true,
    path = "/home/joaom/.local/share/nvim/site/pack/packer/start/nvim-dap",
    url = "https://github.com/mfussenegger/nvim-dap"
  },
  ["nvim-dap-go"] = {
    config = { "\27LJ\2\n4\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\vdap-go\frequire\0" },
    loaded = true,
    path = "/home/joaom/.local/share/nvim/site/pack/packer/start/nvim-dap-go",
    url = "https://github.com/leoluz/nvim-dap-go"
  },
  ["nvim-dap-ui"] = {
    config = { "\27LJ\2\n3\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\ndapui\frequire\0" },
    loaded = true,
    path = "/home/joaom/.local/share/nvim/site/pack/packer/start/nvim-dap-ui",
    url = "https://github.com/rcarriga/nvim-dap-ui"
  },
  ["nvim-dap-virtual-text"] = {
    loaded = true,
    path = "/home/joaom/.local/share/nvim/site/pack/packer/start/nvim-dap-virtual-text",
    url = "https://github.com/theHamsta/nvim-dap-virtual-text"
  },
  ["nvim-lspconfig"] = {
    loaded = true,
    path = "/home/joaom/.local/share/nvim/site/pack/packer/start/nvim-lspconfig",
    url = "https://github.com/neovim/nvim-lspconfig"
  },
  ["nvim-notify"] = {
    config = { "\27LJ\2\nF\0\0\3\0\4\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0B\0\2\1K\0\1\0\1\0\1\ftimeout\3�\23\nsetup\vnotify\frequire\0" },
    loaded = true,
    path = "/home/joaom/.local/share/nvim/site/pack/packer/start/nvim-notify",
    url = "https://github.com/rcarriga/nvim-notify"
  },
  ["nvim-toggleterm.lua"] = {
    config = { "\27LJ\2\n;\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\18jm.toggleterm\frequire\0" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/joaom/.local/share/nvim/site/pack/packer/opt/nvim-toggleterm.lua",
    url = "https://github.com/akinsho/nvim-toggleterm.lua"
  },
  ["nvim-tree.lua"] = {
    config = { "\27LJ\2\n9\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\16jm.nvimtree\frequire\0" },
    loaded = true,
    path = "/home/joaom/.local/share/nvim/site/pack/packer/start/nvim-tree.lua",
    url = "https://github.com/kyazdani42/nvim-tree.lua"
  },
  ["nvim-treesitter"] = {
    config = { "\27LJ\2\n;\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\18jm.treesitter\frequire\0" },
    loaded = true,
    path = "/home/joaom/.local/share/nvim/site/pack/packer/start/nvim-treesitter",
    url = "https://github.com/nvim-treesitter/nvim-treesitter"
  },
  ["nvim-ts-autotag"] = {
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/joaom/.local/share/nvim/site/pack/packer/opt/nvim-ts-autotag",
    url = "https://github.com/windwp/nvim-ts-autotag"
  },
  ["nvim-ts-context-commentstring"] = {
    loaded = true,
    path = "/home/joaom/.local/share/nvim/site/pack/packer/start/nvim-ts-context-commentstring",
    url = "https://github.com/JoosepAlviste/nvim-ts-context-commentstring"
  },
  ["nvim-ts-rainbow"] = {
    loaded = true,
    path = "/home/joaom/.local/share/nvim/site/pack/packer/start/nvim-ts-rainbow",
    url = "https://github.com/p00f/nvim-ts-rainbow"
  },
  ["nvim-web-devicons"] = {
    config = { "\27LJ\2\n6\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\rjm.icons\frequire\0" },
    loaded = true,
    path = "/home/joaom/.local/share/nvim/site/pack/packer/start/nvim-web-devicons",
    url = "https://github.com/kyazdani42/nvim-web-devicons"
  },
  ["octo.nvim"] = {
    config = { "\27LJ\2\n5\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\fjm.octo\frequire\0" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/joaom/.local/share/nvim/site/pack/packer/opt/octo.nvim",
    url = "https://github.com/pwntester/octo.nvim"
  },
  ["package-info.nvim"] = {
    config = { "\27LJ\2\nL\0\0\3\0\4\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0B\0\2\1K\0\1\0\1\0\1\14autostart\1\nsetup\17package-info\frequire\0" },
    loaded = true,
    path = "/home/joaom/.local/share/nvim/site/pack/packer/start/package-info.nvim",
    url = "https://github.com/vuki656/package-info.nvim"
  },
  ["packer.nvim"] = {
    loaded = true,
    path = "/home/joaom/.local/share/nvim/site/pack/packer/start/packer.nvim",
    url = "https://github.com/wbthomason/packer.nvim"
  },
  playground = {
    loaded = false,
    needs_bufread = true,
    only_cond = false,
    path = "/home/joaom/.local/share/nvim/site/pack/packer/opt/playground",
    url = "https://github.com/nvim-treesitter/playground"
  },
  ["plenary.nvim"] = {
    loaded = true,
    path = "/home/joaom/.local/share/nvim/site/pack/packer/start/plenary.nvim",
    url = "https://github.com/nvim-lua/plenary.nvim"
  },
  ["popup.nvim"] = {
    loaded = true,
    path = "/home/joaom/.local/share/nvim/site/pack/packer/start/popup.nvim",
    url = "https://github.com/nvim-lua/popup.nvim"
  },
  ["project.nvim"] = {
    config = { "\27LJ\2\n�\1\0\0\4\0\b\0\v6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\4\0005\3\3\0=\3\5\0025\3\6\0=\3\a\2B\0\2\1K\0\1\0\rpatterns\1\2\0\0\t.git\15ignore_lsp\1\0\1\17silent_chdir\1\1\2\0\0\fnull-ls\nsetup\17project_nvim\frequire\0" },
    loaded = true,
    path = "/home/joaom/.local/share/nvim/site/pack/packer/start/project.nvim",
    url = "https://github.com/ahmedkhalf/project.nvim"
  },
  ["rose-pine"] = {
    loaded = true,
    path = "/home/joaom/.local/share/nvim/site/pack/packer/start/rose-pine",
    url = "https://github.com/rose-pine/neovim"
  },
  ["rust-tools.nvim"] = {
    config = { "\27LJ\2\n8\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\15rust-tools\frequire\0" },
    loaded = true,
    path = "/home/joaom/.local/share/nvim/site/pack/packer/start/rust-tools.nvim",
    url = "https://github.com/simrat39/rust-tools.nvim"
  },
  ["schemastore.nvim"] = {
    loaded = true,
    path = "/home/joaom/.local/share/nvim/site/pack/packer/start/schemastore.nvim",
    url = "https://github.com/b0o/schemastore.nvim"
  },
  shadotheme = {
    loaded = true,
    path = "/home/joaom/.local/share/nvim/site/pack/packer/start/shadotheme",
    url = "https://github.com/Shadorain/shadotheme"
  },
  ["sql.nvim"] = {
    loaded = true,
    path = "/home/joaom/.local/share/nvim/site/pack/packer/start/sql.nvim",
    url = "https://github.com/tami5/sql.nvim"
  },
  ["tabout.nvim"] = {
    config = { "\27LJ\2\nZ\0\0\3\0\4\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0B\0\2\1K\0\1\0\1\0\2\vtabkey\n<c-o>\21ignore_beginning\1\nsetup\vtabout\frequire\0" },
    load_after = {},
    loaded = true,
    needs_bufread = false,
    path = "/home/joaom/.local/share/nvim/site/pack/packer/opt/tabout.nvim",
    url = "https://github.com/abecodes/tabout.nvim",
    wants = { "nvim-treesitter" }
  },
  ["telescope-dap.nvim"] = {
    loaded = true,
    path = "/home/joaom/.local/share/nvim/site/pack/packer/start/telescope-dap.nvim",
    url = "https://github.com/nvim-telescope/telescope-dap.nvim"
  },
  ["telescope-file-browser.nvim"] = {
    loaded = true,
    path = "/home/joaom/.local/share/nvim/site/pack/packer/start/telescope-file-browser.nvim",
    url = "https://github.com/nvim-telescope/telescope-file-browser.nvim"
  },
  ["telescope-frecency.nvim"] = {
    loaded = true,
    path = "/home/joaom/.local/share/nvim/site/pack/packer/start/telescope-frecency.nvim",
    url = "https://github.com/nvim-telescope/telescope-frecency.nvim"
  },
  ["telescope-fzf-native.nvim"] = {
    loaded = true,
    path = "/home/joaom/.local/share/nvim/site/pack/packer/start/telescope-fzf-native.nvim",
    url = "https://github.com/nvim-telescope/telescope-fzf-native.nvim"
  },
  ["telescope-fzf-writer.nvim"] = {
    loaded = true,
    path = "/home/joaom/.local/share/nvim/site/pack/packer/start/telescope-fzf-writer.nvim",
    url = "https://github.com/nvim-telescope/telescope-fzf-writer.nvim"
  },
  ["telescope-toggleterm.nvim"] = {
    config = { "\27LJ\2\nO\0\0\3\0\4\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0'\2\3\0B\0\2\1K\0\1\0\15toggleterm\19load_extension\14telescope\frequire\0" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/joaom/.local/share/nvim/site/pack/packer/opt/telescope-toggleterm.nvim",
    url = "https://github.com/da-moon/telescope-toggleterm.nvim"
  },
  ["telescope-ui-select.nvim"] = {
    loaded = true,
    path = "/home/joaom/.local/share/nvim/site/pack/packer/start/telescope-ui-select.nvim",
    url = "https://github.com/nvim-telescope/telescope-ui-select.nvim"
  },
  ["telescope.nvim"] = {
    config = { "\27LJ\2\n,\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\17jm.telescope\frequire\0" },
    loaded = true,
    path = "/home/joaom/.local/share/nvim/site/pack/packer/start/telescope.nvim",
    url = "https://github.com/nvim-telescope/telescope.nvim"
  },
  ["todo-comments.nvim"] = {
    config = { "\27LJ\2\n�\1\0\0\6\0\b\0\v6\0\0\0'\2\1\0B\0\2\0029\1\2\0005\3\6\0005\4\3\0005\5\4\0=\5\5\4=\4\a\3B\1\2\1K\0\1\0\vsearch\1\0\0\targs\1\6\0\0\18--color=never\17--no-heading\20--with-filename\18--line-number\r--column\1\0\2\fcommand\arg\fpattern\19\\b(KEYWORDS)\\b\nsetup\18todo-comments\frequire\0" },
    loaded = true,
    needs_bufread = false,
    path = "/home/joaom/.local/share/nvim/site/pack/packer/opt/todo-comments.nvim",
    url = "https://github.com/folke/todo-comments.nvim"
  },
  ["tokyonight.nvim"] = {
    loaded = true,
    path = "/home/joaom/.local/share/nvim/site/pack/packer/start/tokyonight.nvim",
    url = "https://github.com/folke/tokyonight.nvim"
  },
  ["trouble.nvim"] = {
    commands = { "TroubleToggle" },
    config = { "\27LJ\2\n<\0\0\3\1\2\0\5-\0\0\0009\0\0\0005\2\1\0B\0\2\1K\0\1\0\0�\1\0\2\16skip_groups\2\tjump\2\rprevious8\0\0\3\1\2\0\5-\0\0\0009\0\0\0005\2\1\0B\0\2\1K\0\1\0\0�\1\0\2\16skip_groups\2\tjump\2\tnext�\1\1\0\6\0\f\0\0206\0\0\0'\2\1\0B\0\2\0026\1\2\0009\1\3\1'\3\4\0003\4\5\0'\5\6\0B\1\4\0016\1\2\0009\1\3\1'\3\a\0003\4\b\0'\5\t\0B\1\4\0019\1\n\0005\3\v\0B\1\2\0012\0\0�K\0\1\0\1\0\2\17auto_preview\1\15auto_close\2\nsetup\23trouble: next item\0\a[d\27trouble: previous item\0\a]d\rnnoremap\aJM\ftrouble\frequire\0" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/joaom/.local/share/nvim/site/pack/packer/opt/trouble.nvim",
    url = "https://github.com/folke/trouble.nvim"
  },
  ["vim-colors-xcode"] = {
    loaded = true,
    path = "/home/joaom/.local/share/nvim/site/pack/packer/start/vim-colors-xcode",
    url = "https://github.com/arzg/vim-colors-xcode"
  },
  ["vim-prisma"] = {
    loaded = true,
    path = "/home/joaom/.local/share/nvim/site/pack/packer/start/vim-prisma",
    url = "https://github.com/pantharshit00/vim-prisma"
  },
  ["vim-surround"] = {
    loaded = true,
    path = "/home/joaom/.local/share/nvim/site/pack/packer/start/vim-surround",
    url = "https://github.com/tpope/vim-surround"
  }
}

time([[Defining packer_plugins]], false)
-- Setup for: trouble.nvim
time([[Setup for trouble.nvim]], true)
try_loadstring("\27LJ\2\n�\1\0\0\5\0\b\0\r6\0\0\0009\0\1\0'\2\2\0'\3\3\0'\4\4\0B\0\4\0016\0\0\0009\0\1\0'\2\5\0'\3\6\0'\4\a\0B\0\4\1K\0\1\0\28trouble: lsp references*<cmd>TroubleToggle lsp_references<CR>\15<leader>lr\20trouble: toggle1<cmd>TroubleToggle workspace_diagnostics<CR>\15<leader>ld\rnnoremap\aJM\0", "setup", "trouble.nvim")
time([[Setup for trouble.nvim]], false)
-- Setup for: diffview.nvim
time([[Setup for diffview.nvim]], true)
try_loadstring("\27LJ\2\n�\1\0\0\5\0\v\0\0196\0\0\0009\0\1\0'\2\2\0'\3\3\0'\4\4\0B\0\4\0016\0\0\0009\0\1\0'\2\5\0'\3\6\0'\4\a\0B\0\4\0016\0\0\0009\0\b\0'\2\t\0'\3\n\0'\4\a\0B\0\4\1K\0\1\0%[[:'<'>DiffviewFileHistory<CR>]]\agh\rvnoremap\27diffview: file history!<cmd>DiffviewFileHistory<CR>\15<leader>df\19diffview: open\26<cmd>DiffviewOpen<CR>\14<leader>d\rnnoremap\aJM\0", "setup", "diffview.nvim")
time([[Setup for diffview.nvim]], false)
time([[packadd for diffview.nvim]], true)
vim.cmd [[packadd diffview.nvim]]
time([[packadd for diffview.nvim]], false)
-- Setup for: todo-comments.nvim
time([[Setup for todo-comments.nvim]], true)
try_loadstring("\27LJ\2\n^\0\0\5\0\5\0\a6\0\0\0009\0\1\0'\2\2\0'\3\3\0'\4\4\0B\0\4\1K\0\1\0\19trouble: todos\25<Cmd>TodoTrouble<CR>\15<leader>lt\rnnoremap\aJM\0", "setup", "todo-comments.nvim")
time([[Setup for todo-comments.nvim]], false)
time([[packadd for todo-comments.nvim]], true)
vim.cmd [[packadd todo-comments.nvim]]
time([[packadd for todo-comments.nvim]], false)
-- Config for: rust-tools.nvim
time([[Config for rust-tools.nvim]], true)
try_loadstring("\27LJ\2\n8\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\15rust-tools\frequire\0", "config", "rust-tools.nvim")
time([[Config for rust-tools.nvim]], false)
-- Config for: LuaSnip
time([[Config for LuaSnip]], true)
try_loadstring("\27LJ\2\n9\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\16jm.snippets\frequire\0", "config", "LuaSnip")
time([[Config for LuaSnip]], false)
-- Config for: nvim-cmp
time([[Config for nvim-cmp]], true)
try_loadstring("\27LJ\2\n;\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\18jm.completion\frequire\0", "config", "nvim-cmp")
time([[Config for nvim-cmp]], false)
-- Config for: nvim-colorizer.lua
time([[Config for nvim-colorizer.lua]], true)
try_loadstring("\27LJ\2\n:\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\17jm.colorizer\frequire\0", "config", "nvim-colorizer.lua")
time([[Config for nvim-colorizer.lua]], false)
-- Config for: nvim-web-devicons
time([[Config for nvim-web-devicons]], true)
try_loadstring("\27LJ\2\n6\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\rjm.icons\frequire\0", "config", "nvim-web-devicons")
time([[Config for nvim-web-devicons]], false)
-- Config for: nvim-dap-go
time([[Config for nvim-dap-go]], true)
try_loadstring("\27LJ\2\n4\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\vdap-go\frequire\0", "config", "nvim-dap-go")
time([[Config for nvim-dap-go]], false)
-- Config for: lsp_signature.nvim
time([[Config for lsp_signature.nvim]], true)
try_loadstring("\27LJ\2\n�\1\0\0\3\0\4\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0B\0\2\1K\0\1\0\1\0\a\tbind\2\15toggle_key\n<C-x>\15max_height\3\4\ffix_pos\1\16hint_enable\2#floating_window_above_cur_line\2\20floating_window\2\nsetup\18lsp_signature\frequire\0", "config", "lsp_signature.nvim")
time([[Config for lsp_signature.nvim]], false)
-- Config for: nvim-dap-ui
time([[Config for nvim-dap-ui]], true)
try_loadstring("\27LJ\2\n3\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\ndapui\frequire\0", "config", "nvim-dap-ui")
time([[Config for nvim-dap-ui]], false)
-- Config for: package-info.nvim
time([[Config for package-info.nvim]], true)
try_loadstring("\27LJ\2\nL\0\0\3\0\4\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0B\0\2\1K\0\1\0\1\0\1\14autostart\1\nsetup\17package-info\frequire\0", "config", "package-info.nvim")
time([[Config for package-info.nvim]], false)
-- Config for: nvim-notify
time([[Config for nvim-notify]], true)
try_loadstring("\27LJ\2\nF\0\0\3\0\4\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0B\0\2\1K\0\1\0\1\0\1\ftimeout\3�\23\nsetup\vnotify\frequire\0", "config", "nvim-notify")
time([[Config for nvim-notify]], false)
-- Config for: neoscroll.nvim
time([[Config for neoscroll.nvim]], true)
try_loadstring("\27LJ\2\n:\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\17jm.neoscroll\frequire\0", "config", "neoscroll.nvim")
time([[Config for neoscroll.nvim]], false)
-- Config for: headlines.nvim
time([[Config for headlines.nvim]], true)
try_loadstring("\27LJ\2\n:\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\17jm.headlines\frequire\0", "config", "headlines.nvim")
time([[Config for headlines.nvim]], false)
-- Config for: gitsigns.nvim
time([[Config for gitsigns.nvim]], true)
try_loadstring("\27LJ\2\n9\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\16jm.gitsigns\frequire\0", "config", "gitsigns.nvim")
time([[Config for gitsigns.nvim]], false)
-- Config for: nvim-treesitter
time([[Config for nvim-treesitter]], true)
try_loadstring("\27LJ\2\n;\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\18jm.treesitter\frequire\0", "config", "nvim-treesitter")
time([[Config for nvim-treesitter]], false)
-- Config for: hop.nvim
time([[Config for hop.nvim]], true)
try_loadstring("\27LJ\2\n&\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\vjm.hop\frequire\0", "config", "hop.nvim")
time([[Config for hop.nvim]], false)
-- Config for: lualine.nvim
time([[Config for lualine.nvim]], true)
try_loadstring("\27LJ\2\n8\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\15jm.lualine\frequire\0", "config", "lualine.nvim")
time([[Config for lualine.nvim]], false)
-- Config for: diffview.nvim
time([[Config for diffview.nvim]], true)
try_loadstring("\27LJ\2\nY\0\0\2\0\6\0\r6\0\0\0009\0\1\0+\1\1\0=\1\2\0006\0\0\0009\0\1\0+\1\1\0=\1\3\0006\0\0\0009\0\1\0'\1\5\0=\1\4\0K\0\1\0\5\16colorcolumn\tlist\twrap\awo\bvim�\2\1\0\5\0\20\0\0236\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\6\0005\3\4\0005\4\3\0=\4\5\3=\3\a\0025\3\t\0003\4\b\0=\4\n\3=\3\v\0025\3\r\0005\4\f\0=\4\14\0035\4\15\0=\4\16\0035\4\17\0=\4\18\3=\3\19\2B\0\2\1K\0\1\0\fkeymaps\23file_history_panel\1\0\1\6q\27<Cmd>DiffviewClose<CR>\15file_panel\1\0\1\6q\27<Cmd>DiffviewClose<CR>\tview\1\0\0\1\0\1\6q\27<Cmd>DiffviewClose<CR>\nhooks\18diff_buf_read\1\0\0\0\17default_args\1\0\1\21enhanced_diff_hl\2\24DiffviewFileHistory\1\0\0\1\2\0\0\6%\nsetup\rdiffview\frequire\0", "config", "diffview.nvim")
time([[Config for diffview.nvim]], false)
-- Config for: indent-blankline.nvim
time([[Config for indent-blankline.nvim]], true)
try_loadstring("\27LJ\2\n:\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\17jm.blankline\frequire\0", "config", "indent-blankline.nvim")
time([[Config for indent-blankline.nvim]], false)
-- Config for: project.nvim
time([[Config for project.nvim]], true)
try_loadstring("\27LJ\2\n�\1\0\0\4\0\b\0\v6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\4\0005\3\3\0=\3\5\0025\3\6\0=\3\a\2B\0\2\1K\0\1\0\rpatterns\1\2\0\0\t.git\15ignore_lsp\1\0\1\17silent_chdir\1\1\2\0\0\fnull-ls\nsetup\17project_nvim\frequire\0", "config", "project.nvim")
time([[Config for project.nvim]], false)
-- Config for: telescope.nvim
time([[Config for telescope.nvim]], true)
try_loadstring("\27LJ\2\n,\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\17jm.telescope\frequire\0", "config", "telescope.nvim")
time([[Config for telescope.nvim]], false)
-- Config for: lsp-rooter.nvim
time([[Config for lsp-rooter.nvim]], true)
try_loadstring("\27LJ\2\n8\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\15lsp-rooter\frequire\0", "config", "lsp-rooter.nvim")
time([[Config for lsp-rooter.nvim]], false)
-- Config for: nvim-tree.lua
time([[Config for nvim-tree.lua]], true)
try_loadstring("\27LJ\2\n9\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\16jm.nvimtree\frequire\0", "config", "nvim-tree.lua")
time([[Config for nvim-tree.lua]], false)
-- Config for: todo-comments.nvim
time([[Config for todo-comments.nvim]], true)
try_loadstring("\27LJ\2\n�\1\0\0\6\0\b\0\v6\0\0\0'\2\1\0B\0\2\0029\1\2\0005\3\6\0005\4\3\0005\5\4\0=\5\5\4=\4\a\3B\1\2\1K\0\1\0\vsearch\1\0\0\targs\1\6\0\0\18--color=never\17--no-heading\20--with-filename\18--line-number\r--column\1\0\2\fcommand\arg\fpattern\19\\b(KEYWORDS)\\b\nsetup\18todo-comments\frequire\0", "config", "todo-comments.nvim")
time([[Config for todo-comments.nvim]], false)
-- Load plugins in order defined by `after`
time([[Sequenced loading]], true)
vim.cmd [[ packadd nvim-autopairs ]]

-- Config for: nvim-autopairs
try_loadstring("\27LJ\2\n�\1\0\0\6\0\f\0\0156\0\0\0'\2\1\0B\0\2\0029\1\2\0005\3\3\0005\4\5\0005\5\4\0=\5\6\0045\5\a\0=\5\b\4=\4\t\0035\4\n\0=\4\v\3B\1\2\1K\0\1\0\14fast_wrap\1\0\1\bmap\n<c-j>\14ts_config\15javascript\1\2\0\0\20template_string\blua\1\0\0\1\2\0\0\vstring\1\0\2\rcheck_ts\2\24close_triple_quotes\2\nsetup\19nvim-autopairs\frequire\0", "config", "nvim-autopairs")

vim.cmd [[ packadd cmp-git ]]

-- Config for: cmp-git
try_loadstring("\27LJ\2\nk\0\0\4\0\6\0\t6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\4\0005\3\3\0=\3\5\2B\0\2\1K\0\1\0\14filetypes\1\0\0\1\3\0\0\14gitcommit\19COMMIT_EDITMSG\nsetup\fcmp_git\frequire\0", "config", "cmp-git")

vim.cmd [[ packadd tabout.nvim ]]

-- Config for: tabout.nvim
try_loadstring("\27LJ\2\nZ\0\0\3\0\4\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0B\0\2\1K\0\1\0\1\0\2\vtabkey\n<c-o>\21ignore_beginning\1\nsetup\vtabout\frequire\0", "config", "tabout.nvim")

time([[Sequenced loading]], false)

-- Command lazy-loads
time([[Defining lazy-load commands]], true)
pcall(vim.cmd, [[command -nargs=* -range -bang -complete=file TroubleToggle lua require("packer.load")({'trouble.nvim'}, { cmd = "TroubleToggle", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args>, mods = "<mods>" }, _G.packer_plugins)]])
time([[Defining lazy-load commands]], false)

vim.cmd [[augroup packer_load_aucmds]]
vim.cmd [[au!]]
  -- Filetype lazy-loads
time([[Defining lazy-load filetype autocommands]], true)
vim.cmd [[au FileType markdown ++once lua require("packer.load")({'markdown-preview.nvim'}, { ft = "markdown" }, _G.packer_plugins)]]
vim.cmd [[au FileType go ++once lua require("packer.load")({'go.nvim'}, { ft = "go" }, _G.packer_plugins)]]
time([[Defining lazy-load filetype autocommands]], false)
  -- Event lazy-loads
time([[Defining lazy-load event autocommands]], true)
vim.cmd [[au InsertEnter * ++once lua require("packer.load")({'nvim-ts-autotag'}, { event = "InsertEnter *" }, _G.packer_plugins)]]
vim.cmd [[au BufRead * ++once lua require("packer.load")({'octo.nvim', 'playground', 'Comment.nvim'}, { event = "BufRead *" }, _G.packer_plugins)]]
vim.cmd [[au TermOpen * ++once lua require("packer.load")({'telescope-toggleterm.nvim'}, { event = "TermOpen *" }, _G.packer_plugins)]]
vim.cmd [[au BufWinEnter * ++once lua require("packer.load")({'nvim-bufferline.lua', 'nvim-toggleterm.lua'}, { event = "BufWinEnter *" }, _G.packer_plugins)]]
time([[Defining lazy-load event autocommands]], false)
vim.cmd("augroup END")
vim.cmd [[augroup filetypedetect]]
time([[Sourcing ftdetect script at: /home/joaom/.local/share/nvim/site/pack/packer/opt/go.nvim/ftdetect/go.vim]], true)
vim.cmd [[source /home/joaom/.local/share/nvim/site/pack/packer/opt/go.nvim/ftdetect/go.vim]]
time([[Sourcing ftdetect script at: /home/joaom/.local/share/nvim/site/pack/packer/opt/go.nvim/ftdetect/go.vim]], false)
vim.cmd("augroup END")

_G._packer.inside_compile = false
if _G._packer.needs_bufread == true then
  vim.cmd("doautocmd BufRead")
end
_G._packer.needs_bufread = false

if should_profile then save_profiles() end

end)

if not no_errors then
  error_msg = error_msg:gsub('"', '\\"')
  vim.api.nvim_command('echohl ErrorMsg | echom "Error in packer_compiled: '..error_msg..'" | echom "Please check your config for correctness" | echohl None')
end