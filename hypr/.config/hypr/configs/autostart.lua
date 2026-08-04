-------------------
---- AUTOSTART ----
-------------------

-- See https://wiki.hypr.land/Configuring/Basics/Autostart/

-- Autostart necessary processes (like notifications daemons, status bars, etc.)
-- Or execute your favorite apps at launch like this:
--
hl.on("hyprland.start", function()
	hl.exec_cmd("systemctl --user start hyprpolkitagent")
	hl.exec_cmd("waybar")
	hl.exec_cmd("hyprpaper")
	hl.exec_cmd("wl-paste --watch cliphist store")
	hl.exec_cmd("hyprsunset")
	hl.exec_cmd("waytrogen --restore")
	hl.exec_cmd("mcontrolcenter")
	hl.exec_cmd("blueman-applet")
end)
