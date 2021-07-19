local g = vim.g
local fn = vim.fn

g.dashboard_disable_statusline=1
g.dashboard_default_executive = "telescope"
g.dashboard_custom_header = {
    "                                   ",
    "                                   ",
    "                                   ",
    "   ⣴⣶⣤⡤⠦⣤⣀⣤⠆     ⣈⣭⣿⣶⣿⣦⣼⣆         ",
    "    ⠉⠻⢿⣿⠿⣿⣿⣶⣦⠤⠄⡠⢾⣿⣿⡿⠋⠉⠉⠻⣿⣿⡛⣦       ",
    "          ⠈⢿⣿⣟⠦ ⣾⣿⣿⣷    ⠻⠿⢿⣿⣧⣄     ",
    "           ⣸⣿⣿⢧ ⢻⠻⣿⣿⣷⣄⣀⠄⠢⣀⡀⠈⠙⠿⠄    ",
    "          ⢠⣿⣿⣿⠈    ⣻⣿⣿⣿⣿⣿⣿⣿⣛⣳⣤⣀⣀   ",
    "   ⢠⣧⣶⣥⡤⢄ ⣸⣿⣿⠘  ⢀⣴⣿⣿⡿⠛⣿⣿⣧⠈⢿⠿⠟⠛⠻⠿⠄  ",
    "  ⣰⣿⣿⠛⠻⣿⣿⡦⢹⣿⣷   ⢊⣿⣿⡏  ⢸⣿⣿⡇ ⢀⣠⣄⣾⠄   ",
    " ⣠⣿⠿⠛ ⢀⣿⣿⣷⠘⢿⣿⣦⡀ ⢸⢿⣿⣿⣄ ⣸⣿⣿⡇⣪⣿⡿⠿⣿⣷⡄  ",
    " ⠙⠃   ⣼⣿⡟  ⠈⠻⣿⣿⣦⣌⡇⠻⣿⣿⣷⣿⣿⣿ ⣿⣿⡇ ⠛⠻⢷⣄ ",
    "      ⢻⣿⣿⣄   ⠈⠻⣿⣿⣿⣷⣿⣿⣿⣿⣿⡟ ⠫⢿⣿⡆     ",
    "       ⠻⣿⣿⣿⣿⣶⣶⣾⣿⣿⣿⣿⣿⣿⣿⣿⡟⢀⣀⣤⣾⡿⠃     ",
    "         uneconomicalfairy14       "
}

g.dashboard_custom_section = {
    a = {description = {"           Find File          "}, command = "Telescope find_files"},
    b = {description = {"           Recents            "}, command = "Telescope oldfiles"},
    c = {description = {"           Find Word          "}, command = "Telescope live_grep"},
    d = {description = {"           New File           "}, command = "DashboardNewFile"},
    e = {description = {"           Bookmarks          "}, command = "Telescope marks"},
    f = {description = {"           Plugins            "}, command = "e ~/AppData/Local/nvim/config/plugins.vim"}
}
  --f = {
  --   description = { "  Neovim Config Files" },
  --   command = "Telescope find_files cwd=" .. CONFIG_PATH,
  -- },
  -- e = {description = {'  Marks              '}, command = 'Telescope marks'}

g.dashboard_custom_footer = {
    --"NvChad Loaded " .. plugins_count .. " plugins",
    "Uneconomicalfairy14"
}

  -- f = {
  --   description = { "  Neovim Config Files" },
  --   command = "Telescope find_files cwd=" .. CONFIG_PATH,
  -- },
  -- e = {description = {'  Marks              '}, command = 'Telescope marks'}
  vim.cmd "let packages = len(globpath('~/AppData/Local/nvim-data/plugged','*', 0, 1))"

  vim.api.nvim_exec(
    [[
    let g:dashboard_custom_footer = ['Neovim loaded '..packages..' plugins']
]],
    false
  )


  -- file_browser = {description = {' File Browser'}, command = 'Telescope find_files'},
  -- vim.g.dashboard_session_directory = CACHE_PATH..'/session'
