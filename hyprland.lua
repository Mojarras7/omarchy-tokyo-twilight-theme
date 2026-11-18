local inactive_border_color = "rgba(00000000)"

hl.config({
  general = {
    col = {
      active_border = inactive_border_color,
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
      passes = 3,
      new_optimizations = true,
      xray = false,
      contrast = 1.02,
      brightness = 0.92,
      noise = 0.012,
      vibrancy = 0.22,
      vibrancy_darkness = 0.22,
      popups = true,
      special = true,
    },
  },

  group = {
    col = {
      border_active = inactive_border_color,
      border_inactive = inactive_border_color,
    },
  },
})

-- Borderless windows: match IDE & Obsidian effective translucency (~0.90) with foot terminal (0.92 * 0.97)
o.window({ tag = "terminal" }, { border_size = 0 })
o.transparent_window({ tag = "terminal" }, "0.97 0.94")
o.transparent_window("antigravity-ide", "0.91 0.88")
o.transparent_window("md\\.obsidian\\.Obsidian", "0.91 0.88")
