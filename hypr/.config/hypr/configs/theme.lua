-----------------------
---- LOOK AND FEEL ----
-----------------------

-- Refer to https://wiki.hypr.land/Configuring/Basics/Variables/
-- Animations: https://wiki.hypr.land/Configuring/Advanced-and-Cool/Animations/
-- Curves: https://wiki.hypr.land/Configuring/Advanced-and-Cool/Curves/

-- <================= HYDE EQUIVALENT ========================>

hl.config({
	general = {
		gaps_in = 3,
		gaps_out = 8,

		border_size = 2,

		-- Active: Catppuccin Mauve to Flamingo gradient at 45 degrees
		-- Inactive: Catppuccin Subtext0 to Overlay0 gradient at 45 degrees
		col = {
			active_border = { colors = { "rgba(ca9ee6ff)", "rgba(f2d5cfff)" }, angle = 45 },
			inactive_border = { colors = { "rgba(b4befecc)", "rgba(6c7086cc)" }, angle = 45 },
		},

		resize_on_border = true,
		allow_tearing = false,
		layout = "dwindle",
	},

	decoration = {
		rounding = 10,
		rounding_power = 2,

		active_opacity = 1.0,
		inactive_opacity = 1.0,

		shadow = {
			enabled = false,
		},

		blur = {
			enabled = true,
			size = 6,
			passes = 3,
			new_optimizations = true,
			ignore_opacity = true,
			xray = false,
		},
	},

	-- Group borders matching your old config
	group = {
		col = {
			border_active = { colors = { "rgba(ca9ee6ff)", "rgba(f2d5cfff)" }, angle = 45 },
			border_inactive = { colors = { "rgba(b4befecc)", "rgba(6c7086cc)" }, angle = 45 },
			border_locked_active = { colors = { "rgba(ca9ee6ff)", "rgba(f2d5cfff)" }, angle = 45 },
			border_locked_inactive = { colors = { "rgba(b4befecc)", "rgba(6c7086cc)" }, angle = 45 },
		},
	},
})

-- Custom Bezier Curves
hl.curve("wind", { type = "bezier", points = { { 0.05, 0.9 }, { 0.1, 1.05 } } })
hl.curve("winIn", { type = "bezier", points = { { 0.1, 1.1 }, { 0.1, 1.1 } } })
hl.curve("winOut", { type = "bezier", points = { { 0.3, -0.3 }, { 0, 1 } } })
hl.curve("liner", { type = "bezier", points = { { 1, 1 }, { 1, 1 } } })

-- Animations
-- Note: speed is duration in ds (1ds = 100ms); LOWER = FASTER
hl.animation({ leaf = "global", enabled = true, speed = 3, bezier = "wind" })
hl.animation({ leaf = "windows", enabled = true, speed = 5, bezier = "wind", style = "slide" })
hl.animation({ leaf = "windowsIn", enabled = true, speed = 6, bezier = "winIn", style = "slide" })
hl.animation({ leaf = "windowsOut", enabled = true, speed = 2, bezier = "winOut", style = "slide" })
hl.animation({ leaf = "windowsMove", enabled = true, speed = 4, bezier = "wind", style = "slide" })
hl.animation({ leaf = "border", enabled = true, speed = 1, bezier = "liner" })
hl.animation({ leaf = "borderangle", enabled = true, speed = 5, bezier = "liner", style = "once" })
hl.animation({ leaf = "fade", enabled = true, speed = 2, bezier = "liner" })

-- Layer surfaces (wofi, notifications, etc.): pure fade, no geometry pop.
-- Geometry (size/position) animation is disabled so the box appears at final
-- size instantly; only opacity fades in.
hl.animation({ leaf = "layers", enabled = true, speed = 1, bezier = "liner", style = "fade" })
hl.animation({ leaf = "layersIn", enabled = true, speed = 1, bezier = "liner", style = "fade" })
hl.animation({ leaf = "layersOut", enabled = true, speed = 1, bezier = "liner", style = "fade" })
hl.animation({ leaf = "fadeLayers", enabled = true, speed = 2.5, bezier = "liner" })
hl.animation({ leaf = "fadeLayersIn", enabled = true, speed = 2.5, bezier = "liner" })
hl.animation({ leaf = "fadeLayersOut", enabled = true, speed = 1, bezier = "liner" })

hl.animation({ leaf = "workspaces", enabled = true, speed = 3, bezier = "wind" })
