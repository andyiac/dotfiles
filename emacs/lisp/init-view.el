;; basic view init 
;; include background
(set-face-background 'fringe "#fff")

(menu-bar-mode -1) 
(toggle-scroll-bar -1)
(global-hl-line-mode -1)
(tool-bar-mode -1) 
(setq inhibit-startup-message t)

;; 设置自动全屏 
;; (set-frame-parameter nil 'fullscreen 'fullboth) 
;; 设置打开最大化
(add-to-list 'default-frame-alist '(fullscreen . maximized))


;; Mac 下 emacs 输入中文卡顿问题
;; stop cursor blinking at the first letter when using pinyin or wubi
(setq redisplay-dont-pause nil)


;; use larger font
;;(setq default-frame-alist '((font . "Source Code Pro-14")))


(provide 'init-view)



