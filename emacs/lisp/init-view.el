;; basic view init
;; include background
(set-face-background 'fringe "#fff")

;; background color
(set-background-color "#FFFFFF")

;; To disable the menu bar
(menu-bar-mode -1)

;; To disable the scrollbar
(toggle-scroll-bar -1)

;; Highlight current line
(global-hl-line-mode -1)

;; To disable the toolbar
(tool-bar-mode -1)

(setq inhibit-startup-message t)

;;设置窗口位置为屏库左上角(0,0)
(set-frame-position (selected-frame) 0 0)

;; 设置自动全屏
;; (set-frame-parameter nil 'fullscreen 'fullboth)
;; 设置打开最大化
(add-to-list 'default-frame-alist '(fullscreen . maximized))

;; Mac 下 emacs 输入中文卡顿问题
;; stop cursor blinking at the first letter when using pinyin or wubi
(setq redisplay-dont-pause nil)

(setq-default initial-scratch-message
              (concat ";; Happy hacking, " user-login-name " - Emacs ♥ you!\n\n"))

;; use larger font
;;(setq default-frame-alist '((font . "Source Code Pro-14")))

;; set font size
(set-face-attribute 'default nil :height 150)

;; set cursor style
;; (setq-default cursor-type 'bar)
;; from https://blog.csdn.net/FlyDirk/article/details/8506753
;; 智能改变光标形状
(require 'cursor-change)
(cursor-change-mode 1)


;; set show line num
;;(global-linum-mode 1) ; always show line numbers
;;(setq linum-format "%d| ")  ; set format

(provide 'init-view)
