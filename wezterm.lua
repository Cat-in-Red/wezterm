local wezterm = require 'wezterm'

local colors = {
  fg="#d0d7de", bg="#0d1117", comment="#8b949e", red="#ff7b72",
  green="#3fb950", yellow="#d29922", blue="#539bf5", magenta="#bc8cff",
  cyan="#39c5cf", selection="#415555", caret="#58a6ff", invisibles="#2f363d"
}

return {
  -- Общие настройки
  --font = wezterm.font("Fira Code"),
  font = wezterm.font("JetBrains Mono"),
  font_size = 12.0,

  -- Настройка цветов
  colors = {
    -- Основной фон и текст
    background = "#1e1e1e",  -- Темный фон
    foreground = "#d0d0d0",  -- Светлый текст

    -- Палитра цветов
    ansi = {
      "#1e1e1e",  -- Черный
      "#f44747",  -- Красный
      "#47d75b",  -- Зеленый
      "#ffaf00",  -- Желтый
      "#5c88e1",  -- Синий
      "#bb73b0",  -- Пурпурный
      "#00b0b0",  -- Циан
      "#d0d0d0",  -- Белый
    },
    brights = {
      "#5c5c5c",  -- Серый
      "#f99f9f",  -- Красный яркий
      "#99f99f",  -- Зеленый яркий
      "#ffff99",  -- Желтый яркий
      "#99aaff",  -- Синий яркий
      "#ff99ff",  -- Пурпурный яркий
      "#99ffff",  -- Циан яркий
      "#ffffff",  -- Белый яркий
    },

    -- Цвет курсора
    cursor_bg = "#d0d0d0",
    cursor_fg = "#1e1e1e",
    cursor_border = "#d0d0d0",

    -- Цвет выделения текста
    selection_fg = "#1e1e1e",
    selection_bg = "#d0d0d0",
  },

  term = "xterm-256color",
  warn_about_missing_glyphs = false,
  enable_wayland = true,
  front_end = "WebGpu",
  webgpu_power_preference = "HighPerformance",
  prefer_egl = true,

  leader = { key = 'a', mods = 'CTRL', timeout_milliseconds = 1000 },

  -- Горячие клавиши (переключение вкладок и управление ими)
  keys = {
    -- Префикс LEADER + A для всех команд
    {key="a", mods="LEADER", action=wezterm.action{SendString="\x01"}},  -- LEADER+A отправляет Ctrl+A в терминал

    -- Переключение между вкладками
    {key="1", mods="LEADER", action=wezterm.action{ActivateTab=0}},   -- LEADER + ALT + 1 — переключиться на вкладку 1
    {key="2", mods="LEADER", action=wezterm.action{ActivateTab=1}},   -- LEADER + ALT + 2 — переключиться на вкладку 2
    {key="3", mods="LEADER", action=wezterm.action{ActivateTab=2}},   -- LEADER + ALT + 3 — переключиться на вкладку 3
    {key="4", mods="LEADER", action=wezterm.action{ActivateTab=3}},   -- LEADER + ALT + 4 — переключиться на вкладку 4
    {key="5", mods="LEADER", action=wezterm.action{ActivateTab=4}},   -- LEADER + ALT + 5 — переключиться на вкладку 5
    {key="6", mods="LEADER", action=wezterm.action{ActivateTab=5}},   -- LEADER + ALT + 6 — переключиться на вкладку 6
    {key="7", mods="LEADER", action=wezterm.action{ActivateTab=6}},   -- LEADER + ALT + 7 — переключиться на вкладку 7
    {key="8", mods="LEADER", action=wezterm.action{ActivateTab=7}},   -- LEADER + ALT + 8 — переключиться на вкладку 8
    {key="9", mods="LEADER", action=wezterm.action{ActivateTab=8}},   -- LEADER + ALT + 9 — переключиться на вкладку 9

    -- Переключение между вкладками (вперед/назад)
    {key="LeftArrow", mods="LEADER", action=wezterm.action{ActivateTabRelative=-1}},  -- LEADER + ALT + ← — переключение на предыдущую вкладку
    {key="p", mods="LEADER", action=wezterm.action{ActivateTabRelative=-1}},  -- LEADER + ALT + ← — переключение на предыдущую вкладку
    {key="RightArrow", mods="LEADER", action=wezterm.action{ActivateTabRelative=1}},   -- LEADER + ALT + → — переключение на следующую вкладку
    {key="n", mods="LEADER", action=wezterm.action{ActivateTabRelative=1}},   -- LEADER + ALT + → — переключение на следующую вкладку

    -- Закрытие вкладки
    {key="x", mods="LEADER", action=wezterm.action{CloseCurrentTab={confirm=true}}}, -- LEADER + ALT + W — закрыть текущую вкладку

    -- Открытие новой вкладки
    {key="c", mods="LEADER", action=wezterm.action{SpawnTab="DefaultDomain"}},  -- LEADER + ALT + T — открыть новую вкладку
    {key="v", mods="LEADER", action=wezterm.action.ActivateCopyMode},
-- Переключение между окнами
    { key = '[', mods = 'LEADER', action = wezterm.action.ActivateWindowRelative(1) },
    { key = ']', mods = 'LEADER', action = wezterm.action.ActivateWindowRelative(9) },

  },

  -- Округление углов окна и другие настройки внешнего вида
  --window_decorations = "RESIZE",
  window_background_opacity = 0.98,
  initial_cols = 120,
  initial_rows = 30,
}
