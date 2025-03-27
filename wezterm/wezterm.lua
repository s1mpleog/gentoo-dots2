local wezterm = require("wezterm")

-- This will hold the configuration.
local config = wezterm.config_builder()

-- This is where configuration choices are applied.

--config.font = wezterm.font("Maple Mono NF")
-- It's possible to specify some parameters to influence the font selection;
-- for example, this selects a Bold, Italic font variant.
config.font = wezterm.font("Comic Code", { weight = "Regular", italic = false })
config.font_size = 12.0

config.warn_about_missing_glyphs = false

--config.harfbuzz_features = { "cv01", "cv02", "ss01", "zero" } -- Enables ligatures and font-specific tweaks
config.freetype_render_target = "Normal"
config.freetype_load_target = "HorizontalLcd"
--config.freetype_load_flags = "FORCE_AUTOHINT"
-- For example, changing the color scheme:
-- config.color_scheme = 'AdventureTime'
config.freetype_load_flags = "NO_HINTING"

--config.color_scheme = "Eldritch"
config.color_scheme = "Doom2"

config.window_background_opacity = 1.0

config.hide_tab_bar_if_only_one_tab = true

config.window_decorations = "NONE"

config.enable_tab_bar = false

config.check_for_updates = false

config.animation_fps = 120
config.cursor_blink_ease_in = "EaseOut"
config.cursor_blink_ease_out = "EaseOut"
config.default_cursor_style = "BlinkingBar"
config.cursor_blink_rate = 650
--config.xcursor_theme = "default"
--config.xcursor_size = 24

config.force_reverse_video_cursor = true

config.use_resize_increments = false

config.enable_wayland = true

--config.dpi = 198.0

config.window_padding = {
	left = 5,
	right = 5,
	top = 5,
	bottom = 5,
}

--config.window_decorations = "RESIZE" -- Removes title bar but keeps resizable edges
--config.window_background_opacity = 0.9 -- Slight transparency
--config.macos_window_background_blur = 10 -- If using macOS

config.front_end = "WebGpu" -- Improves rendering performance
config.max_fps = 120
config.webgpu_power_preference = "HighPerformance"
--config.webgpu_preferred_adapter = config.gpu_adapters:pick_best()
-- webgpu_preferred_adapter = gpu_adapters:pick_manual('Dx12', 'IntegratedGpu'),
-- webgpu_preferred_adapter = gpu_adapters:pick_manual('Gl', 'Other'),
config.underline_thickness = "1.5pt"

--config.set_environment_variables = {
--__NV_PRIME_RENDER_OFFLOAD = "1",
--__GLX_VENDOR_LIBRARY_NAME = "nvidia",
--__VK_LAYER_NV_optimus = "1",
--}

--config.webgpu_preferred_adapter = {
--backend = "Vulkan",
--name = "", -- Let WezTerm auto-detect the best Vulkan device
--}
--

config.keys = {}

--config.enable_scroll_bar = true -- Show a scrollbar

--config.exit_behavior = "CloseOnCleanExit"
--config.exit_behavior = "Close"

-- and finally, return the configuration to wezterm
return config
