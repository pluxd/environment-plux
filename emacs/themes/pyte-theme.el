; custom port pyte theme for vim

(deftheme pyte "Custom port pyte theme for vim.")

(let ((class '((class color) (min-colors 89))))
  (custom-theme-set-faces
   'pyte
   `(default ((,class (:background "#f0f0f0" :foreground "#404850"))))
   `(cursor ((,class (:background "#b0b4b8"))))
   ;; Highlighting faces
   `(highlight ((,class (:background "#875f87" :foreground "#eeeeee"
			 :underline t))))
   `(region ((,class (:background "#e0e0e0" ))))
   `(vertical-border ((,class (:foreground "#8090a0"))))
   ;; Mode line faces
   `(mode-line ((,class (:background "#8090a0" :foreground "#ffffff" :box nil))))
   `(mode-line-inactive ((,class (:background "#a0b0c0" :foreground "#506070" :box nil))))
   ;; Escape and prompt faces
   `(minibuffer-prompt ((,class (:foreground "#404850"))))
;   `(escape-glyph ((,class (:foreground "#d0d0d0" :weight bold))))
   ;; Font lock faces
;   `(font-lock-builtin-face ((,class (:foreground "#e5786d"))))
;   `(font-lock-comment-face ((,class (:foreground "#99968b"))))
;   `(font-lock-constant-face ((,class (:foreground "#e5786d"))))
;   `(font-lock-function-name-face ((,class (:foreground "#cae682"))))
;   `(font-lock-keyword-face ((,class (:foreground "#8ac6f2" :weight bold))))
;   `(font-lock-string-face ((,class (:foreground "#95e454"))))
;   `(font-lock-type-face ((,class (:foreground "#92a65e" :weight bold))))
;   `(font-lock-variable-name-face ((,class (:foreground "#cae682"))))
;   `(font-lock-warning-face ((,class (:foreground "#ccaa8f"))))
   ;; Button and link faces
;   `(link ((,class (:foreground "#8ac6f2" :underline t))))
;   `(link-visited ((,class (:foreground "#e5786d" :underline t))))
;   `(button ((,class (:background "#333333" :foreground "#f6f3e8"))))
;   `(header-line ((,class (:background "#303030" :foreground "#e7f6da"))))
   ;; Gnus faces
;   `(gnus-group-news-1 ((,class (:weight bold :foreground "#95e454"))))
;   `(gnus-group-news-1-low ((,class (:foreground "#95e454"))))
;   `(gnus-group-news-2 ((,class (:weight bold :foreground "#cae682"))))
;   `(gnus-group-news-2-low ((,class (:foreground "#cae682"))))
;   `(gnus-group-news-3 ((,class (:weight bold :foreground "#ccaa8f"))))
;   `(gnus-group-news-3-low ((,class (:foreground "#ccaa8f"))))
;   `(gnus-group-news-4 ((,class (:weight bold :foreground "#99968b"))))
;   `(gnus-group-news-4-low ((,class (:foreground "#99968b"))))
;   `(gnus-group-news-5 ((,class (:weight bold :foreground "#cae682"))))
;   `(gnus-group-news-5-low ((,class (:foreground "#cae682"))))
;   `(gnus-group-news-low ((,class (:foreground "#99968b"))))
;   `(gnus-group-mail-1 ((,class (:weight bold :foreground "#95e454"))))
;   `(gnus-group-mail-1-low ((,class (:foreground "#95e454"))))
;   `(gnus-group-mail-2 ((,class (:weight bold :foreground "#cae682"))))
;   `(gnus-group-mail-2-low ((,class (:foreground "#cae682"))))
;   `(gnus-group-mail-3 ((,class (:weight bold :foreground "#ccaa8f"))))
;   `(gnus-group-mail-3-low ((,class (:foreground "#ccaa8f"))))
;   `(gnus-group-mail-low ((,class (:foreground "#99968b"))))
;   `(gnus-header-content ((,class (:foreground "#8ac6f2"))))
;   `(gnus-header-from ((,class (:weight bold :foreground "#95e454"))))
;   `(gnus-header-subject ((,class (:foreground "#cae682"))))
;   `(gnus-header-name ((,class (:foreground "#8ac6f2"))))
;   `(gnus-header-newsgroups ((,class (:foreground "#cae682"))))
   ;; Message faces
;   `(message-header-name ((,class (:foreground "#8ac6f2" :weight bold))))
;   `(message-header-cc ((,class (:foreground "#95e454"))))
;   `(message-header-other ((,class (:foreground "#95e454"))))
;   `(message-header-subject ((,class (:foreground "#cae682"))))
;   `(message-header-to ((,class (:foreground "#cae682"))))
;   `(message-cited-text ((,class (:foreground "#99968b"))))
;   `(message-separator ((,class (:foreground "#e5786d" :weight bold))))
  ))

(provide-theme 'pyte)
