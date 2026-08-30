;;; slezytheme-theme.el --- A dark theme by Screamlark

;; Title: slezytheme
;; Version: 1.0.0
;; Author: https://github.com/QuaaPa

(deftheme screamtheme
  "Gentoo TTY–inspired dark theme with canonical VGA colors")

;; ------------------------------------------------------------
;; Base faces
;; ------------------------------------------------------------
(custom-theme-set-faces
 'screamtheme

 ;; Core
 '(default ((t (:background "#000000" :foreground "#AAAAAA"))))
 '(cursor  ((t (:background "#FFFFFF"))))
 '(region  ((t (:background "#555555"))))
 '(highlight ((t (:background "#333333"))))
 '(error ((t (:foreground "#FF5555" :weight bold))))
 '(warning ((t (:foreground "#FFFF55"))))
 '(success ((t (:foreground "#55FF55"))))

 ;; Font lock
 '(font-lock-builtin-face       ((t (:foreground "#5555FF"))))
 '(font-lock-comment-face       ((t (:foreground "#555555"))))
 '(font-lock-constant-face      ((t (:foreground "#AA55AA"))))
 '(font-lock-function-name-face ((t (:foreground "#00AAAA"))))
 '(font-lock-keyword-face       ((t (:foreground "#AA5500" :weight bold))))
 '(font-lock-string-face        ((t (:foreground "#55FF55"))))
 '(font-lock-type-face          ((t (:foreground "#00AA00"))))
 '(font-lock-variable-name-face ((t (:foreground "#FF5555"))))
 '(font-lock-warning-face       ((t (:foreground "#FF5555" :weight bold))))

 ;; UI
 '(mode-line
   ((t (:background "#555555" :foreground "#000000" :box nil))))
 '(mode-line-inactive
   ((t (:background "#000000" :foreground "#555555" :box nil))))
 '(minibuffer-prompt ((t (:foreground "#55FFFF" :weight bold))))
 '(link ((t (:foreground "#5555FF" :underline t))))
 '(link-visited ((t (:foreground "#FF55FF" :underline t))))

 ;; Org
 '(org-document-title ((t (:foreground "#FFFF55" :weight bold))))
 '(org-level-1 ((t (:foreground "#55FFFF"))))
 '(org-level-2 ((t (:foreground "#55FF55"))))
 '(org-level-3 ((t (:foreground "#FFFF55"))))
 '(org-level-4 ((t (:foreground "#FF5555"))))

  ;; ------------------------------------------------------------
 ;; Tab bar — Linux TTY style
 ;; ------------------------------------------------------------

 '(tab-bar
   ((t (:background "#000000"
        :foreground "#AAAAAA"
        :inherit default
        :box nil))))

 '(tab-bar-tab
   ((t (:background "#AAAAAA"
        :foreground "#000000"
        :weight bold
        :box nil))))

 '(tab-bar-tab-inactive
   ((t (:background "#000000"
        :foreground "#555555"
        :box nil))))
)

;; ------------------------------------------------------------
;; Canonical Linux TTY / VGA ANSI palette (Gentoo installer)
;; ------------------------------------------------------------

(setq ansi-color-names-vector
      ["#000000" ; black
       "#AA0000" ; red
       "#00AA00" ; green
       "#AA5500" ; yellow
       "#0000AA" ; blue
       "#AA00AA" ; magenta
       "#00AAAA" ; cyan
       "#AAAAAA"]) ; white

(setq ansi-color-bright-colors
      ["#555555" ; bright black (gray)
       "#FF5555" ; bright red
       "#55FF55" ; bright green
       "#FFFF55" ; bright yellow
       "#5555FF" ; bright blue
       "#FF55FF" ; bright magenta
       "#55FFFF" ; bright cyan
       "#FFFFFF"]) ; bright white

(setq ansi-color-context nil)

;; ------------------------------------------------------------
;; term / shell / compilation safety
;; ------------------------------------------------------------

(setq term-default-bg-color "#000000")
(setq term-default-fg-color "#AAAAAA")

(with-eval-after-load 'ansi-color
  (add-hook 'compilation-filter-hook #'ansi-color-compilation-filter))

;; ------------------------------------------------------------
;; Final provide
;; ------------------------------------------------------------
(provide-theme 'screamtheme)
