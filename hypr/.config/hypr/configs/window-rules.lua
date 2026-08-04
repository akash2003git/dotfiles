----------------------------
---- WINDOWS AND WORKSPACES ----
----------------------------

-- Window Rules:    https://wiki.hypr.land/Configuring/Basics/Window-Rules/
-- Workspace Rules: https://wiki.hypr.land/Configuring/Basics/Workspace-Rules/
-- Layer Rules:     https://wiki.hypr.land/Configuring/Basics/Layer-Rules/

-- Workspace rules -- "Smart gaps" / "No gaps when only"
-- Ref https://wiki.hypr.land/Configuring/Basics/Workspace-Rules/
-- uncomment all if you wish to use that.
-- hl.workspace_rule({ workspace = "w[tv1]", gaps_out = 0, gaps_in = 0 })
-- hl.workspace_rule({ workspace = "f[1]",   gaps_out = 0, gaps_in = 0 })
-- hl.window_rule({
--     name  = "no-gaps-wtv1",
--     match = { float = false, workspace = "w[tv1]" },
--     border_size = 0,
--     rounding    = 0,
-- })
-- hl.window_rule({
--     name  = "no-gaps-f1",
--     match = { float = false, workspace = "f[1]" },
--     border_size = 0,
--     rounding    = 0,
-- })

hl.window_rule({
	name = "kitty-opacity",
	match = { class = "^kitty$" },
	opacity = "0.85 override 0.85 override", -- Active & Inactive opacity
})

-- Example window rules that are useful
local suppressMaximizeRule = hl.window_rule({
	-- Ignore maximize requests from all apps. You'll probably like this.
	name = "suppress-maximize-events",
	match = { class = ".*" },

	suppress_event = "maximize",
})
-- suppressMaximizeRule:set_enabled(false)

hl.window_rule({
	-- Fix some dragging issues with XWayland
	name = "fix-xwayland-drags",
	match = {
		class = "^$",
		title = "^$",
		xwayland = true,
		float = true,
		fullscreen = false,
		pin = false,
	},

	no_focus = true,
})

-- Layer rules also return a handle.
-- local overlayLayerRule = hl.layer_rule({
--     name  = "no-anim-overlay",
--     match = { namespace = "^my-overlay$" },
--     no_anim = true,
-- })
-- overlayLayerRule:set_enabled(false)

-- hl.layer_rule({
-- 	name = "waybar-blur",
-- 	match = { namespace = "^waybar$" },
-- 	blur = false,
-- })

hl.layer_rule({
	name = "wlogout-blur",
	match = { namespace = "^logout_dialog$" },
	blur = true,
})

-- Hyprland-run windowrule
hl.window_rule({
	name = "move-hyprland-run",
	match = { class = "hyprland-run" },

	move = "20 monitor_h-120",
	float = true,
})

-- satty (screenshot annotation): float and center it on the screen
hl.window_rule({
	name = "satty-floating",
	match = { class = "^com.gabm.satty$" },

	float = true,
	center = true,
})
