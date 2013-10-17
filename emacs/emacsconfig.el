; fast access to the custom init file 
(set-register ?e (cons 'file (concat custom-files-path "emacsconfig.el")))

; OS type - are we running Microsoft Windows?
(defvar running-ms-windows (eq system-type 'windows-nt))
(defvar running-ms-windows (string-match "windows" (prin1-to-string system-type)))

(custom-set-variables
 '(custom-theme-directory (concat custom-files-path "themes"))
 '(fringe-mode 0 nil (fringe))
 '(indicate-buffer-boundaries nil)
 '(indicate-empty-lines nil)
 '(overflow-newline-into-fringe nil))

; set default color theme
(cond 
  (running-ms-windows (load-theme 'pyte t))
  (t (load-theme 'xoria))
)

; disable all unnecessary UI elements
(setq inhibit-startup-message t)
(menu-bar-mode 0)
(tool-bar-mode 0)
(toggle-scroll-bar 0)
(setq left-fringe-width 0)

; disable cursor blinking
(blink-cursor-mode 0)

; start with empty buffer
(switch-to-buffer (get-buffer-create "emtpy"))
(delete-other-windows)

; set up language and font
(set-language-environment "Russian")
(set-default-font 
  (cond 
    (running-ms-windows "Terminus-11")
    (t "Terminus-9")
  )
)
