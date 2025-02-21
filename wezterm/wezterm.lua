-- local wezterm = require("wezterm")

-- local config = {}

-- if wezterm.config_builder then
-- 	config = wezterm.config_builder()
-- end

-- config.window_padding = {
-- 	top = 0,
-- 	right = 0,
-- 	left = 0,
-- }

-- config.window_background_opacity = 0.7 
-- config.win32_system_backdrop = "Acrylic" 

-- config.font = wezterm.font("IosevkaTerm Nerd Font")
-- config.hide_tab_bar_if_only_one_tab = true
-- config.max_fps = 120 
-- config.enable_kitty_graphics = true


-- config.default_domain = "WSL:Ubuntu"
-- config.front_end = "OpenGL"
-- local gpus = wezterm.gui.enumerate_gpus()
-- if #gpus > 0 then
-- 	config.webgpu_preferred_adapter = gpus[1] 
-- else
-- 	wezterm.log_info("No GPUs found, using default settings")
-- end

-- return config

-- ###########################################################

local wezterm = require("wezterm")

local config = {}

if wezterm.config_builder then
	config = wezterm.config_builder()
end

-- Configuración de padding (relleno)
config.window_padding = {
	top = 0,     -- Padding superior
	right = 0,   -- Padding derecho
	bottom = 0,  -- Padding inferior (ajustado a 0)
	left = 0,    -- Padding izquierdo
}

-- Transparencia y efecto Acrylic (solo en Windows)
config.window_background_opacity = 0.7  -- Opacidad del fondo
config.win32_system_backdrop = "Acrylic"  -- Efecto Acrylic en Windows

-- Fuente y tamaño de la fuente
config.font = wezterm.font("IosevkaTerm Nerd Font", { weight = "Regular", stretch = "Normal", style = "Normal" })
config.font_size = 14  -- Tamaño de la fuente (ajusta según tus preferencias)

-- Ocultar la barra de pestañas si solo hay una pestaña
config.hide_tab_bar_if_only_one_tab = true

-- Configuración de rendimiento
config.max_fps = 120  -- Máximo de fotogramas por segundo
config.enable_kitty_graphics = true  -- Habilitar gráficos avanzados

-- Configuración para WSL: Debian
config.default_domain = "WSL:Debian"  -- Usar WSL con Debian como dominio predeterminado
-- config.default_prog = { "wsl.exe", "--distribution", "Debian", "-e", "zellij" }  -- Iniciar Zellij automáticamente
-- config.default_prog = { "pwd" }  -- Iniciar Zellij automáticamente
-- config.default_prog = { "wsl.exe", "--distribution", "Debian", "--exec", "zellij" }


-- Configuración de GPU (opcional, solo si tienes una GPU compatible)
local gpus = wezterm.gui.enumerate_gpus()
if #gpus > 0 then
	config.webgpu_preferred_adapter = gpus[1]  -- Usar la primera GPU disponible
else
	wezterm.log_info("No GPUs found, using default settings")
end

return config