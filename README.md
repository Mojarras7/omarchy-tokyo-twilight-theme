# Tokyo Twilight 🌃

A sleek, macOS-inspired dark theme for [Omarchy Linux](https://omarchy.org/) featuring deep obsidian blacks, Tokyo neon purple, electric cyber blue, and vivid cyber pink accents with clean, borderless rounded window aesthetics.

![Tokyo Twilight Desktop](screenshots/desktop.png)

---

## Highlights

- 🎨 **Tokyo Twilight Palette**: Built on deep obsidian night (`#0c0d14`), vibrant Tokyo neon violet (`#a855f7`), electric cyber blue (`#3b82f6`), cyber pink (`#f43f8e`), and crisp white (`#f5f6ff`).
- 🪟 **Borderless & Clean**: Zero window borders and smooth 12px macOS-style rounded corners for a clean, distraction-free desktop.
- ⚡ **Minimalist Terminal**: Refined ANSI color palette strictly tuned to purples, blues, whites, and pinks.
- 🚀 **Zero-Border Menus**: Translucent, blurred quick-menu (<kbd>Super</kbd> + <kbd>Space</kbd>) and popups with 0 borders.
- 🖼️ **4K / 5K / 6K Wallpaper Collection**: 6 ultra-high-resolution cinematic landscapes optimized for high-DPI displays.

---

## Screenshots

### Desktop View
![Tokyo Twilight Clean Desktop](screenshots/desktop.png)

### Terminal & Menu
![Tokyo Twilight Terminal](screenshots/terminal.png)

---

## Quick Install

You can install and apply **Tokyo Twilight** directly with the Omarchy CLI:

```bash
omarchy theme install https://github.com/mojarras7/tokyo-twilight.git
```

Or if you prefer to clone it manually into your themes directory:

```bash
git clone https://github.com/mojarras7/tokyo-twilight.git ~/.config/omarchy/themes/tokyo-twilight
omarchy theme set tokyo-twilight
```

To switch wallpapers at any time:
```bash
omarchy theme bg next
```
*(Or press <kbd>SUPER</kbd> + <kbd>CTRL</kbd> + <kbd>W</kbd>)*

---

## Recommended Look & Feel (Hyprland)

For the full clean macOS aesthetic (12px rounded corners, no window borders), add or verify the following in your `~/.config/hypr/looknfeel.lua`:

```lua
hl.config({
  general = {
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
})

-- Explicitly ensure terminal windows remain borderless
o.window({ tag = "terminal" }, { border_size = 0 })
```

Then reload Hyprland:
```bash
hyprctl reload
```

---

## Color Palette

| Swatch | Color Name | Hex Code | Purpose |
|:---:|:---|:---:|:---|
| ⬛ | **Obsidian Base** | `#0c0d14` | Background / Terminal surface |
| 🟪 | **Tokyo Purple** | `#a855f7` | Primary Accent / Menu focus / Active indicators |
| 🟦 | **Cyber Blue** | `#3b82f6` | Secondary Accent / Highlights |
| 🩵 | **Ice Blue** | `#38bdf8` | Terminal Cyan / Links |
| 🌸 | **Neon Pink** | `#f43f8e` | Terminal Red / Alerts / Status |
| 🌺 | **Pastel Pink** | `#f472b6` | Terminal Yellow / Warm accents |
| 🪻 | **Lilac Lavender** | `#c084fc` | Terminal Green / Soft violet |
| ⬜ | **Clean White** | `#f5f6ff` | Foreground Text |

---

## Wallpapers Included

| File | Resolution | Description |
|:---|:---:|:---|
| `1-fuji-twilight-5k.jpg` | 5120 × 2880 (5K) | Mount Fuji reflection over calm lake at dusk with purple twilight clouds |
| `2-tokyo-skyline-4k.jpg` | 3840 × 2160 (4K) | Rooftop view overlooking Tokyo twilight with glowing Tokyo Tower |
| `3-rainbow-bridge-5k.jpg` | 5120 × 2160 (5K) | Illuminated Rainbow Bridge and Tokyo Bay at dusk |
| `4-tokyo-tower-stars-4k.jpg` | 3840 × 2160 (4K) | Tokyo Tower beneath a starry twilight sky and Milky Way |
| `5-fuji-starry-lake-6k.jpg` | 6144 × 3456 (6K) | Mount Fuji starry night reflection over Lake Yamanaka |
| `6-tokyo-cosmic-twilight-4k.jpg` | 3840 × 2160 (4K) | Tokyo cosmic nebula artwork with neon violet twilight hues |

---

## Custom Minimalist Icons

Tokyo Twilight includes custom macOS-style minimalist vector icons to replace default application launcher icons:

- **Terminal (`Foot`)**: Dark macOS squircle with a glowing neon purple/cyan `>_` command prompt (replaces the default footprint).
- **Files (`Nautilus`)**: Dark macOS squircle folder with purple/blue gradients.
- **Steam**: Crisp 256x256 high-resolution icon fix (eliminates high-DPI blurriness).
- **Tailscale**: Clean vector indicator icon.

To install these custom icons on any machine:

```bash
cd ~/.config/omarchy/themes/tokyo-twilight
./install-icons.sh
```

Or run the one-liner installer directly:

```bash
curl -sSL https://raw.githubusercontent.com/Mojarras7/tokyo-twilight/main/install-icons.sh | bash
```

---

## Top Bar & Plugins Setup

To match the clean, floating top bar shown in the screenshots:

### 1. Transparent Top Bar
Ensure your bar background mode is set to `none` (transparent):

```bash
omarchy bar background none
```

### 2. Bar Plugins Used
Tokyo Twilight works with both default and enhanced Omarchy bar setups. The showcase desktop uses these additional plugins:

| Plugin | Purpose | Install Command |
|:---|:---|:---|
| **Omarchy Spotify** | Music controls & album art | `omarchy plugin add https://github.com/stappmus/Omarchy-Spotify.git` |
| **OmaRGB** | Hardware RGB lighting sync | `omarchy plugin add https://github.com/ilkaydnc/omargb.git` |
| **Tailscale** | VPN status indicator on bar | Built-in: `omarchy bar put omarchy.tailscale --after quickshell.spotify` |
| **Superwhisper** | Dictation panel widget | `superwhisper.panel` |

---

## Terminal Disk Manager (`dsk`)

Tokyo Twilight includes the **`dsk`** utility for fast, interactive disk mounting and entering directly in your terminal without needing root passwords:

- 💾 **Interactive Drive Selector**: Beautiful Charm `gum` selector showing device, size, filesystem, and mount status.
- ⚡ **Auto-Mount & Direct `cd`**: Selecting an unmounted drive mounts it via `udisksctl` (no `sudo` needed) and immediately changes directory (`cd`) straight into it.
- 📂 **Direct Jump & Safe Eject**: Jump into already mounted drives or safely unmount them with one keypress.

### Installation
On any new PC:

```bash
cd ~/.config/omarchy/themes/tokyo-twilight
./install-dsk.sh
```

Or install with the one-liner:

```bash
curl -sSL https://raw.githubusercontent.com/Mojarras7/tokyo-twilight/main/install-dsk.sh | bash
```

### Usage
- `dsk` *(or `disks`)* — Open interactive disk picker.
- `dsk <label>` — Jump directly to a drive (e.g. `dsk Datos` or `dsk sda2`).
- `dsk -l` — List connected drives and mount points in Tokyo Twilight colors.
- `dsk -u <label>` — Unmount drive safely.

---

## Author

Created by **Alejandro Mojarras** ([@Mojarras7](https://github.com/Mojarras7)).

Designed with ❤️ for the [Omarchy](https://omarchy.org/) community.

## License

[MIT License](LICENSE) © 2026 Alejandro Mojarras
