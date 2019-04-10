(set-face-background 'fringe "#fff")

(global-hl-line-mode -1)

(setq inhibit-startup-message t)

;; stop cursor blinking at the first letter when using pinyin or wubi
(setq redisplay-dont-pause nil)

;; To disable the menu bar
(menu-bar-mode -1)

;; To disable the scrollbar
(toggle-scroll-bar -1)

;; To disable the toolbar
(tool-bar-mode -1)

;; Disable start up view
(setq inhibit-startup-message t)

;; Highlight current line
;;(global-hl-line-mode 1)

(ido-mode t)

(winner-mode t)

(windmove-default-keybindings)

;;设置窗口位置为屏库左上角(0,0)
(set-frame-position (selected-frame) 0 0)

;; org capture
(require 'org)
(setq org-directory "~/Inbox")
(setq org-default-notes-file (concat org-directory "/Capture.org"))
(define-key global-map "\C-cc" 'org-capture)

(setq org-capture-templates
      '(("t" "Todo" entry (file+headline "~/Inbox/gtd.org" "Tasks")
	 "* TODO %?\n  %i\n  %a")
	("j" "Journal" entry (file+datetree "~/Inbox/journal.org")
	 "* %?\nEntered on %U\n  %i\n  %a")
	("i" "Inbox" entry (file+datetree "~/Inbox/inbox.org")
	 "* %?\nEntered on %U\n  %i\n  %a")
	))

(define-key global-map "\C-ci"
     (lambda () (interactive) (org-capture nil "i")))

;; set show line num
;;(global-linum-mode 1) ; always show line numbers
;;(setq linum-format "%d| ")  ; set format


;; background color
(set-background-color "#FFFFFF")

;; agenda table
(setq org-hide-leading-stars t)
 (define-key global-map "\C-ca" 'org-agenda)
 (setq org-log-done 'time)
