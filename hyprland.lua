local active_border_color = { colors = { "#a855f7", "#3b82f6" }, angle = 45 }
local inactive_border_color = "rgba(00000000)"

hl.config({
  general = {
    col = {
      active_border = active_border_color,
      inactive_border = inactive_border_color,
    },
    border_size = 0,
    gaps_in = 6,
    gaps_out = 10,
  },

  decoration = {
    rounding = 12,
    rounding_power = 2,
    shadow = {
      enabled = true,
      range = 24,
      render_power = 3,
      color = "rgba(00000077)",
    },
    blur = {
      enabled = true,
      size = 6,
      passes = 2,
    },
  },

  group = {
    col = {
      border_active = active_border_color,
      border_inactive = inactive_border_color,
    },
  },
})

-- Ensure all terminals have no borders
o.window({ tag = "terminal" }, { border_size = 0 })
