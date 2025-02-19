local wezterm = require("wezterm")
local h = require("utils/helpers")
local M = {}

M.get_font = function()
  local fonts = {
    -- "JetBrainsMono Nerd Font",
    -- "UbuntuMono Nerd Font",
    "FiraCode Nerd Font",
    -- "FiraMono Nerd Font",
    -- "GeistMono Nerd Font",
  }
  local family = h.get_random_entry(fonts)
  return wezterm.font_with_fallback({
    -- { family = family, weight = "Regular" },
    -- { family = family,           weight = 400 },
    { family = family },
    { family = "JetBrains Mono", weight = "Medium" },
  })
end

return M
