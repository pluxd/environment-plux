; disable all unnecessary UI elements
(menu-bar-mode 0)
(tool-bar-mode 0)
(toggle-scroll-bar 0)
(setf inhibit-splash-screen t)

; disable cursor blinking
(blink-cursor-mode 0)

; start with empty buffer
(switch-to-buffer (get-buffer-create "emtpy"))
(delete-other-windows)

; set up language and font
(set-language-environment "Russian")
(set-default-font "Terminus-11")
